# Collision check (查重)

Loaded from `SKILL.md` Stage 4. Every candidate that reaches the top 5 must pass this before delivery. Collisions are graded, not binary: a same-field hit kills or demotes; a cross-field hit is a footnote.

## The four-query loop

Run all four per candidate. With web tools, actually run them; without, grade from existing knowledge and flag the grade as unverified.

1. **Exact match** — search the name in quotes (「名字」 / "Name") to see who owns the word today.
2. **Category match** — name + the object's category words (e.g. `name app 健康`, `name app health`), plus a category-scoped search on the marketplace it will live in (`site:apps.apple.com name`, `site:play.google.com name`).
3. **Near match** — real collisions are usually near-misses, not exact: prefix/suffix attached (问安 → 蓝熙问安), pinyin spelling (NianLun), homophone variants (同音字), English spelling/spacing/plural variants (TreeRing/Treering/Tree Rings). Search the 2–3 most likely mutations.
4. **Marketplace first** — search where the thing must *register*, not just where it's discussed: app stores, GitHub, package registries, domain and social handles (see type-specific sources below).

## Grading a hit

- **Same-field collision** — same category, same audience, or an operating competitor. Demotes the candidate off the top 5 unless a repair succeeds; otherwise discard.
- **Same name, different field** — lives on as a footnote in the risk note (e.g. Treering the yearbook company vs a Chinese-market health app: different category, but blocks global EN use of the pair).
- **Nothing found** — record what was searched and how deep; "clean" always carries the shallow-search caveat unless a registry search proved it.

## Repair playbook

Before discarding a same-field hit, attempt repair:

- **EN-pair swap**: keep the strong CN name, replace a colliding English pair with a coined alternative (KinWell → KinHale) or the pinyin strategy — WeChat, Xiaomi, Alipay all go by pinyin overseas.
- **Light CN variant**: attach one differentiating character or swap for a near-synonym only if it doesn't cost fluency.
- Unrepairable → discard and promote the next-ranked candidate from the ideation pool — the ≥ 20-pool exists exactly so scoring can absorb kills.

## Type-specific sources

- **Consumer app / website**: quoted web search; `site:apps.apple.com`, `site:play.google.com`, `site:app.mi.com`, Huawei AppGallery; domain and common misspellings; WeChat official-account and Weibo handle search; trademark screening is a **human follow-up** — point the user at CNIPA 中国商标网 (relevant classes for health apps: 9 software, 10 medical devices, 35, 42 SaaS, 44 medical services), WIPO Global Brand Database, USPTO TESS, EUIPO.
- **Open-source / tech library**: run `scripts/check-availability.sh <name>` (bundled first pass: npm, PyPI, GitHub repo-name search, DNS for .com/.io/.app), then confirm with targeted searches on `site:github.com`, `site:crates.io`, `site:pypi.org`, `site:hub.docker.com`; check the package tag as well as the repo name.
- **Event / column / series**: hashtag uniqueness on target social platforms; handle availability.
- **Offline shop / restaurant**: same-neighborhood name search on 大众点评/美团/高德; **trademark timing rules apply** — file before opening or any press (the 鹿角巷/皇茶/茶颜悦色 wars in `case-studies.md` are the warning); recommend defensively registering the near-variant ring.
- **Company**: enterprise registry (企业信用信息公示系统) — human check.
- **Person names**: the official 全国同名查询 (公安一网通办/政务服务 App) gives real duplicate counts — agent cannot query it; deliver with this as a named human follow-up.

## Honesty bar

State in the delivery what was actually searched (queries used, depth) versus what only existing knowledge covers, and name the human follow-ups (trademark registries, app-store final check at submission, domain purchase). A "clean" grade from shallow sampling must never read as "verified available".
