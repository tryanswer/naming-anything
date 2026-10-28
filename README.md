# naming-anything

[![License: MIT](https://img.shields.io/badge/License-MIT-3fb950.svg)](LICENSE)
[![Type: Agent Skill](https://img.shields.io/badge/type-Agent_Skill-8957e5.svg)](https://github.com/anthropics/skills)
[![传统层：五行 · 三才五格 · 八卦](https://img.shields.io/badge/传统层-五行_·_三才五格_·_八卦-db6d28.svg)](#4-traditional-chinese-scoring-layer-五行--三才五格--八卦)
[![GitHub stars](https://img.shields.io/github/stars/tryanswer/naming-anything.svg?style=flat&color=ff8c42)](https://github.com/tryanswer/naming-anything/stargazers)

> An Agent Skill for naming anything — apps, products, companies, open-source projects, offline shops, events, pets, IPs, and people — through a professional four-stage pipeline, with bilingual (Chinese-English) output, trademark-aware scoring, a graded collision screen (查重), and an optional traditional Chinese metaphysics layer (**五行 · 三才五格 · 八卦**).

Packaged as an Agent Skill (the open `SKILL.md` convention): any agent that loads skills from a skills directory can use it, unmodified.

---

## 1. Overview

LLM-assisted naming has a characteristic failure mode: polished-but-interchangeable candidates pulled from thesaurus reflexes and lazy suffixes ("-ly", "-ify", "智慧XX", "XX管家") — names that could sit on any product in any category. **naming-anything** counters this with the working discipline of professional naming agencies, adapted for agent execution:

- **Method before inspiration.** Candidates are generated inside mapped metaphor territories and across seven structured methods, never by free-associating on a category word.
- **Law before aesthetics.** Every candidate is placed on the trademark Distinctiveness Spectrum (Generic → Descriptive → Suggestive → Arbitrary → Fanciful); the Suggestive sweet spot is the default target for consumer-facing objects.
- **Evidence before delivery.** Finalists pass a four-query collision screen with graded verdicts and a repair playbook, and the delivery separates what was actually checked from what remains a human step.

## 2. The Four-Stage Pipeline

| Stage | What happens | Completion gate |
|---|---|---|
| **Discovery** | Write the positioning statement. Thin briefs are interrogated — batch questions including "three names you love / three you hate" — with a second, harder round on vague-adjective answers | One sentence stating what the name must communicate |
| **Ideation** | Map 2–3 metaphor territories first; then run all seven methods (descriptive / metaphor / compound / coined / borrowed noun / wordplay / acronym) with the spectrum trade-offs attached | ≥ 20 candidates, all Chinese-English pairs |
| **Validation** | Kill AI slop (suffix addiction, empty compounds, swap test, story test); score survivors 0–5 across seven dimensions: fluency, sound symbolism, distinctiveness, protectability, headroom, safety, tone match; attach the traditional grade where applicable | Every candidate has a full score line; top 5 defensible |
| **Selection** | Four-query collision screen (exact → category → near-match → marketplace) with same-field / cross-field grading and repair (EN-pair swap, pinyin-for-global); say/write/search/translate tests; delivery with rationale, risk notes, taglines, and a No.1 recommendation | Top 5 fully documented; human steps named |

## 3. Object-Type Coverage

The pipeline is constant; standards adapt by type, dispatched from `references/object-types.md`:

| Object | Adapted emphasis |
|---|---|
| Consumer app / product | Tone × headroom doubled, tagline mandatory, AI-suffix warning, trademark classes listed |
| Company / team | Headroom heaviest (business pivots), formal-register fit |
| Open-source / tech | English primary, coined borrowings favored, registry & repo collision checks, bundled script |
| Offline shop / restaurant | The 门头 test (readable at 3 m in 2 s), category word present, platform searchability, **trademark-before-launch timing rules** from real tea-shop wars |
| Event / column / series | Fluency heaviest (it gets chanted), no year-number lock-in |
| Pet / character / IP | Affection brief, reduplication, callable in two syllables |
| **Person (baby / pen name)** | Substitutes a dedicated rulebook: full-name homophone sweep, tonal curve, era-collision waves, character-system safety, pinyin internationalization, family customs as constraints |
| Everything else | Falls back to the positioning statement's feel to weight the methods |

## 4. Traditional Chinese Scoring Layer (五行 · 三才五格 · 八卦)

For Chinese-facing names of persons, businesses, shops, and products, every candidate additionally receives a traditional metaphysics grade, computed under three classical schools and reported **per school**:

1. **字五行** — each character's element via form (radical) → meaning → Kangxi-stroke fallback; the name's element sequence is read for its 生克 chain and benchmarked against the person's 喜用神 (from birth data, with an explicit "verify with a professional 排盘" caveat) or the industry element for businesses.
2. **三才五格** — 天格 / 人格 / 地格 / 外格 / 总格 computed by Kangxi stroke rules, each reduced mod 81 into the standard 81数理 verdicts, plus the 三才 (heaven-human-earth) configuration judged for 相生/相克.
3. **八卦** — total strokes mod 8 mapped to the 先天八卦 sequence (乾1 … 坤8), reporting the trigram's 象义; for persons with birth data, matched against the 命卦; for businesses, read against the positioning statement.

Delivered as one line per candidate, e.g.:

> 传统：五行 水木相生 ✓补喜用 · 三才 吉 · 总格 31 大吉 · 卦象 离（丽）· ★★★★☆（传统视角，各派侧重不同）

**Integrity rules.** The schools frequently disagree with each other — a name can be 大吉 in one and 凶 in another — so verdicts are never silently averaged. All traditional results are presented as a cultural perspective layer that is reported *next to* the modern seven-dimension score and is never folded into the modern ranking. Bazi and 命卦 derivations always carry the "以专业排盘核对" caveat.

## 5. Repository Structure

```
SKILL.md                         # The four-stage pipeline (entry point)
references/
  object-types.md                # Per-type standards and adaptation rules
  person-naming.md               # Human-name rulebook (full-name checks, customs)
  traditional-scoring.md         # 五行 · 三才五格 · 八卦 traditional layer
  case-studies.md                # Famous names decoded by the lesson they teach
  collision-check.md              # Four-query collision loop, grading, repair
scripts/
  check-availability.sh           # First-pass: npm / PyPI / GitHub / domain DNS
```

## 6. Installation

The skill is a plain directory; point your agent's skill loader at it:

```bash
# into a user-level skills directory
git clone git@github.com:tryanswer/naming-anything.git <your-skills-dir>/naming-anything

# or into a project's skills directory
git clone git@github.com:tryanswer/naming-anything.git <your-project>/.claude/skills/naming-anything
```

Any agent that scans a skills directory for `SKILL.md` (Claude Code, Codex, and other Agent-Skills-compatible harnesses) will pick it up; invoke it by describing a naming challenge or by the skill's name directly.

For technology-oriented names, the bundled checker gives an unauthenticated first-pass availability sweep:

```bash
scripts/check-availability.sh <candidate-name>
```

## 7. Evaluation Model & Honesty Rules

- Seven modern scoring dimensions, story tie-breaker at equal scores
- Collision grades distinguish same-field hits (demote/kill/repair) from cross-field footnotes, with the explicit warning that cross-field collisions can "settle accounts" when a business expands (the Apple Records pattern)
- Every delivery states what was actually searched versus judged from prior knowledge, and names the remaining human steps (trademark registries, store submission checks, domain purchase, 全国同名查询 for person names)
- A "clean" from shallow sampling is never reported as "verified available"

## 8. Case Studies — Names Decoded

### Quick decodes (method → spectrum → lesson)

| Name | Method | Spectrum position | The lesson it teaches |
|---|---|---|---|
| 抖音 / TikTok | Wordplay + onomatopoeia | Suggestive | The name snapshots the launch killer feature (music-sync shake); going global, TikTok is a *decoupled* sound-native coinage, not a translation — the CN-EN split is the masterstroke |
| 汽水音乐 / Soda Music | Metaphor | Arbitrary | "Music as soda" compresses the whole strategic posture (light, zero-burden listening) into four characters; the appended category word is an honest, searchable compromise |
| 茶颜悦色 | Idiom modification (和颜悦色 → 茶颜悦色) | Suggestive | Preloaded familiarity + category signal in one edit; the 茶颜观色 squatting war is the standing lesson on near-variant defensive registration |
| 拼多多 | Wordplay + reduplication | Suggestive | Reduplication lowers conversational guards, and the name carries its own jingle ("拼得多，省得多") |
| Apple | Arbitrary real word | Arbitrary | Textbook maximum-protectability name — and the standing warning that cross-field collisions "settle accounts": Apple Records (1968) became a 30-year war the moment iTunes entered music |
| Google | Coined (accidental misspelling of googol) | Fanciful | The misspelling created perfect ownability and a tellable story — and it's the honest exception: it would fail today's slop filter, so the filter is a sieve, not a constitution |
| Spotify | Coined, storyless | Fanciful | No romantic origin at all — a winning product carried an average name. Survivorship warning: never grade a giant's name as proof of method |
| Twitter → X | — | — | Renaming away a verb-built brand (tweet, retweet) torched a compounding asset — the single most expensive naming decision of the decade |

### Worked example — a real pipeline run (family health-trend app)

Brief → Positioning statement: *make looking after the whole family's health feel like warm companionship, not a burden — every check-up, every year's trend, gently remembered.* Territory mapping: tree rings · lighthouses · hearth-lights and letters home. Seven methods → 21 bilingual pairs. Winner after full screening:

> **年轮 / NianLun** — scored 30/35 across the seven dimensions
> Rationale: one ring per year — the whole family's health literally grows a visible ring; trend curves and tree rings share a shape
> Collision grade: CN side clean in shallow search; the EN pair TreeRings was **killed for a cross-field hit** (treering.com, a yearbook company whose brand refresh expands into "memories") → **repaired via the pinyin strategy** (the WeChat/Xiaomi precedent)
> Beaten for cause: 问安 died on a same-field hit (蓝熙问安, a family-health app); KinWell English pair died on a same-industry hit (Kinwell Health clinic chain) and was repaired to a coined pair
> Tagline: 「年轮，让全家每一年的健康，都看得见。」

Traditional layer (format illustration — per-school verdicts, never one blended number):

> 传统：字五行 按形/义/数各派判读不一（土/木）· 三才五格 以实际康熙笔画计算 · ★★★☆☆（传统视角，各派侧重不同）

The point of the example: of the top five, two were modified and one killed by the collision screen — which is exactly what screens are for. The ≥ 20-candidate pool exists so kills never shrink the delivery below five.

## 9. Credits & References

- Naming-agency process research: Catchword, WANT Branding (Discovery → Ideation → Validation → Selection), Lexicon (sound symbolism)
- Legal framework: USPTO Distinctiveness Spectrum; the suggestive sweet spot
- Psycholinguistics of recall and name fluency
- Peer skill benchmark: [glacierphonk/naming](https://github.com/glacierphonk/naming) — metaphor-first ideation, AI-slop kill list, and the bundled-availability-script pattern were absorbed with thanks
- Case-study facts (喜茶 trademark buyout, 鹿角巷 squatting swarm, 茶颜悦色 near-clone litigation, Spotify's storyless name) verified against public reporting, 2026-10

## 10. Limitations & Disclaimers

- An agent's web checks are first-pass sampling; trademark filings, registry searches, and app-store final clearance remain human steps
- The traditional metaphysics layer is presented as cultural perspective, not verified causation, and never overrides the modern ranking
- Final name selection is recommended against real-user testing before commitment; a name improves the odds of being remembered, registered, and propagated — it does not substitute for product-market fit
