// Salva una fotografia di ogni sito: home + pagine chiave (html, testo, screenshot desktop e telefono).
// Uso: node snapshot.mjs <cartella-output>   (Chrome headless già in ascolto su 9333)
import { writeFileSync, mkdirSync } from "node:fs";
import { join } from "node:path";

const OUT = process.argv[2];
// Gli indirizzi dei siti sono stati tolti per anonimato: al posto di [sito] va l'URL della home.
const SITES = {
  "prodotti-tipici": "[sito]",
  "alimentari": "[sito]",
  "norcineria": "[sito]",
  "enoteca": "[sito]",
  "cantina": "[sito]",
  "frantoio": "[sito]",
  "abbigliamento": "[sito]",
  "moda-multimarca": "[sito]",
  "gioielleria": "[sito]",
  "hotel-ristorante": "[sito]",
};
// categoria, regex sull'URL, quante pagine al massimo
const KINDS = [
  ["prodotto", /\/(products?|prodott[oi]|articolo|item|p)\/[^/]+|\/shop\/[^/]+\/[^/]+/i, 3],
  ["categoria", /collections?\/|categor|product-category|\/shop\/?$|negozio|catalog/i, 2],
  ["carrello", /cart|carrello/i, 1],
  ["condizioni", /spedizion|shipping|resi\b|reso|return|refund|rimbors|condizioni|termini|terms|policy/i, 2],
  ["chi-siamo", /chi-siamo|about|storia|azienda|la-cantina|the-winery|il-negozio/i, 1],
  ["contatti", /contatt|contact|dove-siamo/i, 1],
];
const UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36";
const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

const { webSocketDebuggerUrl } = await (await fetch("http://127.0.0.1:9333/json/new?about:blank", { method: "PUT" })).json();
const ws = new WebSocket(webSocketDebuggerUrl);
await new Promise((r) => (ws.onopen = r));
let id = 0;
const pending = new Map();
ws.onmessage = (e) => {
  const m = JSON.parse(e.data);
  if (m.id && pending.has(m.id)) { pending.get(m.id)(m); pending.delete(m.id); }
};
const cdp = (method, params = {}) =>
  new Promise((res, rej) => {
    const i = ++id;
    pending.set(i, (m) => (m.error ? rej(new Error(method + ": " + m.error.message)) : res(m.result)));
    ws.send(JSON.stringify({ id: i, method, params }));
  });
const evaluate = async (expr) => (await cdp("Runtime.evaluate", { expression: expr, returnByValue: true })).result.value;

await cdp("Page.enable");
await cdp("Network.setUserAgentOverride", { userAgent: UA });

async function device(mobile) {
  await cdp("Emulation.setDeviceMetricsOverride", mobile
    ? { width: 390, height: 844, deviceScaleFactor: 2, mobile: true }
    : { width: 1366, height: 900, deviceScaleFactor: 1, mobile: false });
  await cdp("Emulation.setTouchEmulationEnabled", { enabled: mobile });
}
async function open(url) {
  await cdp("Page.navigate", { url });
  for (let t = 0; t < 30; t++) {
    await sleep(500);
    if ((await evaluate("document.readyState")) === "complete") break;
  }
  await sleep(2500); // lascia finire il JS che disegna la pagina
}
async function shot(file) {
  // ponytail: altezza tagliata a 8000 px, le pagine infinite non servono per l'analisi
  const h = Math.min(await evaluate("document.documentElement.scrollHeight"), 8000);
  const { data } = await cdp("Page.captureScreenshot", {
    format: "jpeg", quality: 70, captureBeyondViewport: true,
    clip: { x: 0, y: 0, width: await evaluate("document.documentElement.clientWidth"), height: h, scale: 1 },
  });
  writeFileSync(file, Buffer.from(data, "base64"));
}
async function save(dir, name, url) {
  await device(false);
  await open(url);
  const finalUrl = await evaluate("location.href");
  writeFileSync(join(dir, name + ".html"), await evaluate("document.documentElement.outerHTML"));
  writeFileSync(join(dir, name + ".txt"), `URL: ${finalUrl}\n\n` + (await evaluate("document.body.innerText")));
  await shot(join(dir, name + "-desktop.jpg"));
  await device(true);
  await open(url);
  await shot(join(dir, name + "-telefono.jpg"));
  return finalUrl;
}
const links = (host) => evaluate(`[...new Set([...document.querySelectorAll('a[href]')]
  .map(a => { try { const u = new URL(a.href); u.hash = ''; return u.host === ${JSON.stringify(host)} ? u.href : null } catch { return null } })
  .filter(Boolean))]`);

const ONLY = process.argv.slice(3);
for (const [slug, home] of Object.entries(SITES).filter(([s]) => !ONLY.length || ONLY.includes(s))) {
  const dir = join(OUT, slug);
  mkdirSync(dir, { recursive: true });
  const index = [];
  try {
    const finalHome = await save(dir, "00-home", home);
    index.push(`00-home: ${finalHome}`);
    const host = new URL(finalHome).host;
    await device(false);
    await open(finalHome);
    let found = await links(host);
    // i prodotti spesso stanno solo nelle pagine categoria: guarda anche la prima
    const cat = found.find((u) => KINDS[1][1].test(u));
    if (cat) { await open(cat); found = [...new Set([...found, ...(await links(host))])]; }
    const taken = new Set([finalHome]);
    let n = 1;
    for (const [kind, re, max] of KINDS) {
      for (const u of found.filter((u) => re.test(u) && !taken.has(u)).slice(0, max)) {
        taken.add(u);
        const name = `${String(n++).padStart(2, "0")}-${kind}`;
        try { index.push(`${name}: ${await save(dir, name, u)}`); }
        catch (e) { index.push(`${name}: ERRORE ${u} ${e.message}`); }
      }
    }
  } catch (e) {
    index.push("ERRORE: " + e.message);
  }
  writeFileSync(join(dir, "pagine.txt"), `Sito: ${home}\nFotografato il ${new Date().toISOString()}\n\n` + index.join("\n") + "\n");
  console.log(slug, "→", index.length, "pagine");
}
ws.close();
process.exit(0);
