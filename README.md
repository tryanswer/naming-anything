# naming-anything

A Claude Code skill that names anything — apps, products, companies, open-source projects, offline shops, events, pets, IPs, even people (babies, pen names).

Four-stage professional pipeline with Chinese-English paired output, a trademark-aware scoring system, a graded collision (查重) screen, and an optional traditional 五行 layer.

## Why this exists

LLM-assisted naming has a failure mode: polished-but-interchangeable names ("AI slop") pulled from thesaurus reflexes and lazy suffixes. This skill counters it with the discipline professional naming agencies use — metaphor territories, the trademark Distinctiveness Spectrum, graded collision checking — plus rules for domains the industry ignores: Chinese tone fluency, 谐音 collisions, offline shop signage, and person names.

## The pipeline

1. **Discovery** — write a positioning statement; grill the user when the brief is thin (including "name three names you love and three you hate") before ideating
2. **Ideation** — map 2–3 metaphor territories first, then run all seven methods (descriptive / metaphor / compound / coined / borrowed noun / wordplay / acronym) to ≥ 20 bilingual pairs
3. **Validation** — kill AI slop (swap test, story test), then score every candidate: fluency, sound symbolism, distinctiveness, protectability, headroom, safety, tone match; attach a traditional 五行 grade for Chinese-facing names
4. **Selection** — four-query collision screen (exact → category → near-match → marketplace), graded repair (EN-pair swap, pinyin-for-global), novelty checks, tagline, No.1 recommendation with honesty-stamped risk notes

## Structure

```
SKILL.md                        # the four-stage pipeline (entry point)
references/
  object-types.md               # per-type standards: app, company, OSS, event, shop, pet/IP, person, fallback
  person-naming.md              # human names: full-name homophone sweep, tonal curve, era-collision, family customs
  wuxing-scoring.md             # traditional five-element grading layer (never overrides modern scoring)
  case-studies.md               # famous names decoded by the lesson they teach (incl. 喜茶/鹿角巷/茶颜悦色 trademark wars)
  collision-check.md            # four-query collision loop, grading, repair playbook, honesty bars
scripts/
  check-availability.sh         # first-pass: npm / PyPI / GitHub / domain DNS
```

## Install

As a personal skill:

```bash
mkdir -p ~/.claude/skills
git clone git@github.com:tryanswer/naming-anything.git ~/.claude/skills/naming
```

As a project skill: clone into `<project>/.claude/skills/naming/` instead. Then describe your naming challenge in a conversation, or invoke `/naming` directly.

For tech/OSS names, the bundled checker gives a first-pass availability sweep:

```bash
~/.claude/skills/naming/scripts/check-availability.sh my-project-name
```

## Credits

Methodology assembled from naming-agency practice (Catchword, WANT Branding, Lexicon), the USPTO Distinctiveness Spectrum, psycholinguistics of name recall, and a benchmark pass against [glacierphonk/naming](https://github.com/glacierphonk/naming) (metaphor-first process, AI-slop kill list, bundled availability script — all absorbed with thanks). Case-study facts verified against public reporting, 2026-10.

## Known limits

- The agent's collision checks are shallow web sampling — trademark registries, app-store final checks, and domain purchases remain human steps, and the skill says so in every delivery
- 五行 grading is presented as a traditional-culture perspective layer, never as verified causation
