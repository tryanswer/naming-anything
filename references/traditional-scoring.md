# Traditional Chinese metaphysics layer (五行 · 五格数理 · 八卦)

Loaded during Stage 3 for Chinese-facing candidate names of persons, businesses, shops, and products (other object types: on request). This is a supplemental traditional-culture perspective: verdicts are reported alongside the modern score and never fold into the modern ranking.

## On schools — read first

Chinese name metaphysics has competing schools: **字义五行派** (character elements), **五格剖象法** (stroke numerology, of Japanese 熊崎健翁 origin), and **八卦派** (trigram derivation). Their verdicts often **disagree** — one name can rate 大吉 under one school and 凶 under another. Report each school's verdict side by side and let the family or founder weight their own tradition; the single "holistic" star is the agent's labeled holistic impression, never a silent average.

## 1. 字五行 — character elements

Determine each character's element, in priority:

1. **字形/部首 (form)**: 钅→金; 木/艹/竹→木; 氵/水/雨→水; 火/灬/日→火; 土/山/石→土
2. **字义 (meaning)** when form is neutral: 海/江/泉→水; 林/松/荣→木; 剑/锋/钧→金; 明/阳/晖→火; 岳/岩/坤→土
3. **数理 fallback (康熙笔画 last digit)**: 1/2→木, 3/4→火, 5/6→土, 7/8→金, 9/0→水

A multi-character name is an **element sequence** — read the 生克 chain (相生: 木→火→土→金→水→木; 相克: 木克土, 土克水, 水克火, 火克金, 金克木) and benchmark against:

- **Persons**: the 喜用神 — elicited as birth date/time (compute bazi with the caveat "按传统排法推算，请以专业排盘核对") or accepted as the family's stated 喜用神/五行所缺/字辈
- **Business/shop/product**: the industry element (行业五行), plus the founder's 喜用神 when birth data is given — 餐饮/能源/娱乐→火; 金融/机械/硬件→金; 饮品/物流/贸易/平台→水; 农林/家居/教育/出版→木; 地产/建筑/仓储→土

## 2. 五格数理 — three-talent stroke numerology

Compute with 康熙笔画 (traditional counts, 部首按古体 — e.g. 氵 counts as 4):

- **天格**: single surname = surname strokes + 1; compound surname = both chars summed
- **人格** (the core 格): last surname char + first given char
- **地格**: all given-char strokes (single-char given name: strokes + 1)
- **外格**: 总格 − 人格, with the standard ±1 adjustments for 单姓/单名 cases
- **总格**: full-name total strokes

Then: each 格数 reduces **mod 81** → verdict from the standard 81数理 table (吉/半吉/凶; agent applies the pretrained table — recommend cross-checking final candidates with a professional 起名 tool). And the **三才** configuration: take 天/人/地格 last digits → elements (1/2木, 3/4火, 5/6土, 7/8金, 9/0水) → judge 相生 (吉配置) vs 相克 (凶配置).

## 3. 八卦 — trigram image

- Name total strokes **mod 8** → 先天八卦数: 乾1 兑2 离3 震4 巽5 坎6 艮7 坤8 → report the trigram and its 象义 (乾健、兑悦、离丽、震动、巽入、坎陷、艮止、坤顺).
- **Persons with birth data**: derive the 命卦 via the traditional year formula and read the name-trigram ↔ 命卦 generate/control relation.
- **Businesses**: read the trigram's 象义 against the positioning statement and industry (离 for media/visibility, 坤 for acmodation, 乾 for leadership claims…).

## Output format — one line per candidate

> 传统：五行 水木相生 ✓补喜用 · 三才 吉 · 总格 31 大吉 · 卦象 离（丽）· ★★★★☆（传统视角，各派侧重不同）

## Honesty bars

- Present every verdict as the traditional view of the name — a culture layer the family or founder may practice, not verified causation.
- Never average the schools silently; show per-school verdicts and label the holistic star as the agent's impression.
- Bazi and 命卦 computations always carry the "以专业排盘核对" caveat.
- Uninterested user → one line suffices; practicing user → full chain reasoning; in both cases the traditional grades never override the modern ranking.
