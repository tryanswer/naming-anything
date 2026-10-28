---
name: naming
description: Naming engine for anything — apps, products, companies, open-source projects, events, pets, IPs, columns. Use when the user asks to name or rename something, brainstorm name candidates, or critique an existing name. Triggers include "起名", "取名", "命名", "想名字", "给 XX 起个名/名字", "name ideas", "brainstorm names", "naming", "rename". Delivers Chinese-English paired candidates by default.
---

# Naming

Core equation: **a name is compressed positioning** — it must work as a signal (hints what the thing is), a hook (easy to say, picture, and remember), and an asset (ownable and legally defensible). Professional naming runs four stages: **Discovery → Ideation → Validation → Selection**. Never skip a stage or pick a finalist on gut feel.

## Stage 1 — Discovery: write the Positioning Statement

Identify the naming object type, then load the type-specific standards from `references/object-types.md` and run them alongside the generic stages below. When the object is a person's name (baby, pen name, 艺名), substitute the rulebook entirely: load `references/person-naming.md` and run its checks in place of the brand-oriented ones.

Tiered briefing — **grill when thin**: if the user's input already answers *who it serves, what feeling it must convey, any constraints or taboo*, write the Positioning Statement and press on. A thin brief produces generic names, so interrogate before ideating. Ask in one batch: audience and who decides; desired feeling **plus three names the user loves and three they hate** (revealed taste beats stated adjectives); hard constraints and taboo; for commercial objects, the exclusivity/risk appetite; for persons, the birth data and family customs per `references/person-naming.md`. Answers still made of unanchored adjectives ("要高级感"-class) get a second, harder round — press each vague word with "比如?" until a concrete anchor lands. Only an explicit "你定吧 / 随便" ends the grill; then assume a default positioning, state the assumption in the delivery, and score the finalists against the user's love/hate examples as a calibration check.

Completion criterion: one sentence stating what the name must communicate (e.g. "make young users feel budgeting is light and playful, never a chore").

## Stage 2 — Ideation: map territories first, then run all seven methods

Before generating any name, map metaphor territories — names grounded in a territory beat names harvested from a thesaurus. Simplify the object to one functional sentence ("this product [does what] for [whom]"), then ask: what does this job in the physical world, in nature, as a tool, as a role — and in its dramatic as well as its quiet version? Pick the 2–3 richest clusters and generate from within them. (Example: "tracks a family's health year by year" → tree rings and growth, lighthouses and counting keepers, hearth lights and letters home — each cluster then yields names)

Produce candidates in **Chinese-English pairs** — the same idea gets both a Chinese name and an English name, checked for cross-translation drift. Calibrate judgment against `references/case-studies.md` when useful — famous names decoded by the lesson they teach, including the failure cases (trademark-timing disasters, storyless winners, verb-ified moats).

| # | Method | Logic | Example |
|---|--------|-------|---------|
| 1 | Descriptive | Says the function plainly | 支付宝, Hotels.com |
| 2 | Metaphor / evocative | A concrete object carries the abstract function | 飞书, 闲鱼 |
| 3 | Compound | Root A + root B collides into new meaning | Instagram, Evernote |
| 4 | Coined | Invented word, maximum ownability | Kodak, 知乎 |
| 5 | Borrowed proper noun | Mythology / astronomy / literature / names | Nike, Tesla, 夸克 |
| 6 | Wordplay on familiar words | Old vessel, new wine — double meaning for free | 钉钉, 豆瓣 |
| 7 | Acronym / code | Hardcore engineer register | VS Code, GPT |

Each method sits somewhere on the trademark **Distinctiveness Spectrum**, and the trade-off is real:

> Generic → Descriptive → **Suggestive** → Arbitrary → Fanciful
> (easy to market, hard to protect ←→ hard to market, easy to protect)

**Suggestive is the sweet spot**: it hints at the product without literally describing it, staying marketable *and* protectable (Netflix, 飞书). Descriptive works only as a functional name, never as a strong brand. Coined names pay a real recall tax (~38% vs ~69% recall for real-word names) and earn it back only with a strong origin story and marketing budget. Weight the methods per object type per `references/object-types.md`.

Completion criterion: all 7 methods covered, ≥ 20 Chinese-English pairs total.

## Stage 3 — Validation: kill slop, then score

LLM-assisted naming drifts toward polished-but-interchangeable output — run the **slop filter** before scoring:

- EN kills: `-ly/-ify/-ora/-ix` suffix addiction, fake Latin/Greek mashups (Cognivex, Nexagen), thesaurus words (Apex, Zenith, Catalyst), filler-first compounds (SmartX, CloudX, EasyX), corporate padding (Solutions, Labs, Hub, Platform)
- CN kills: category pasting (智慧XX、XX管家、一键XX), thesaurus big words (卓越、领航、盛世), empty suffix padding (云、通、宝 tacked on)
- **Swap test**: if the name could sit unchanged on a product in a different category, it has no specificity — kill it
- **Story test**: a survivor must have a tellable 15-second origin story; no story = thesaurus name in disguise

Score each candidate 0–5 per dimension, sum, and rank. Ties break toward the name with the better origin story — a great story with average sound outperforms perfect phonetics with nothing to tell. For Chinese-facing names of persons, businesses, shops, and products, also attach a **traditional metaphysics grade (五行 · 数理 · 八卦)** per candidate per `references/traditional-scoring.md` — character elements benchmarked against the 喜用神 or industry element, 三才五格 stroke numerology, and the name's trigram image, reported per school. All traditional verdicts are a culture-perspective layer next to the modern score; they never fold into the modern ranking.

- **Fluency**: ≤ 3 syllables, tonal variation in Chinese, no ambiguous liaison; mentally say it aloud three times
- **Sound symbolism**: do the phonemes match the intended feel? Plosives (t/k/p) read fast and precise — Stripe; soft sonorants (l/m/n) read warm and friendly
- **Distinctiveness**: imaginary search preview — how many collisions, does it blend into the category's naming clichés
- **Protectability**: where it sits on the Distinctiveness Spectrum
- **Headroom**: does it lock the thing into one category it may outgrow
- **Safety**: homophones, meaning blind spots in English, negative resonance in other languages/dialects
- **Tone match**: consistency with the Positioning Statement

Completion criterion: every candidate has a full score line, and you can articulate why the top 5 won.

## Stage 4 — Selection: screen, then deliver

Screen the top 5:

- **Say test**: read three times in your head for stumbles
- **Write test**: any rare or painful-to-write characters
- **Collision screen (查重)**: run the four-query loop from `references/collision-check.md` — exact → category → near-match → marketplace — on every top candidate, and grade each hit by field proximity. A same-field hit demotes or kills the candidate; attempt repair (EN-pair swap, pinyin strategy) before discarding, and backfill from the ideation pool. Work from the pool's ranking so kills never shrink the delivery below five.
- **Translate test**: the English name's meaning in native context; cross-language homophone risks

Deliver, per name:

> **中文名 / English name**
> Rationale (1 line)
> Risk note: collision grade with what was actually searched (never a bare "clean" from shallow sampling); human follow-ups named where applicable
> 传统：五行 / 三才 / 81数理 / 卦象 ·stars (traditional-culture layer, when it applies — per-school verdicts, per `references/traditional-scoring.md`)
> Tagline fitting the "XX，让 YY 更 ZZ" pattern in the object's primary language

Close with the No.1 recommendation and its reasoning, plus a reminder that trademark filing, domains, and app-store collisions require human verification.

Completion criterion: top 5 each carry CN/EN pair, rationale, risk note, tagline, and the 五行 grade where the traditional layer applies; a No.1 is named.

## Exception branches

- **Existing name critique**: skip Stages 1–2; run Stage 3 scoring + Stage 4 screening on the given name, name its weaknesses, then patch with 3–5 improved candidates built from the methods it's missing.
- **Code / variable naming**: this is engineering convention, creative naming does the opposite of the codebase's predictability requirement — answer with semantic, convention-following names. Enter this flow only when the user explicitly wants a creative project/product name.
