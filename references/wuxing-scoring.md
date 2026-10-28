# Five-element (五行) grading — the traditional layer

Attached during Stage 3 to every Chinese-facing candidate name for persons, businesses, shops, and products (skip for code/OSS/events/pets unless the user asks). This is a **traditional-culture perspective layer**: it is reported alongside the modern score, never folded into the modern ranking, and never allowed to out-vote the modern dimensions.

## Determining a character's element

Priority order for each character:

1. **字形/部首 (form)**: 钅→金; 木/艹/竹→木; 氵/水/雨→水; 火/灬/日→火; 土/山/石→土
2. **字义 (meaning)** when the form is neutral: 海/江/泉→水; 林/松/荣→木; 剑/锋/钧→金; 明/阳/晖→火; 岳/岩/坤→土
3. **数理 fallback (康熙笔画 last digit)**: 1/2→木, 3/4→火, 5/6→土, 7/8→金, 9/0→水

A multi-character name reads as an **element sequence** — evaluate its chain: 相生 cycle 木→火→土→金→水→木; 相克 pairs 木克土, 土克水, 水克火, 火克金, 金克木.

## The benchmark to match

- **Person names**: match the 喜用神 (favorable elements). Elicit birth date/time and compute the four pillars from pretrained tables — always with the caveat "按传统排法推算，请以专业排盘核对" — or accept the family's stated 喜用神/五行所缺/字辈要求. If neither is provided, grade element-balance only (五行俱全/偏枯) and say the benchmark is missing.
- **Business / shop / product names**: match the **industry element** (行业五行), plus the founder's 喜用神 when birth data is given (traditional 商号 practice): 餐饮/能源/娱乐→火; 金融/机械/硬件→金; 饮品/物流/贸易/平台→水; 农林/家居/教育/出版→木; 地产/建筑/仓储→土. Unclear industries default to the positioning statement's feel.
- **English-only names**: the layer grades the Chinese side of the pair (or the Chinese transliteration); if neither exists, skip and say why.

## Grading (0–5 stars, per candidate)

- **5**: sequence 相生 flowing toward the target, contains the 喜用/industry element, no 克 against it
- **3–4**: contains the target element; minor 克 elsewhere in the chain
- **1–2**: neutral, or mild 克 against the target
- **0**: 克 against the target throughout

Output one line per candidate in the delivery:

> 五行：水木相生 · 喜用神为木 · ★★★★☆（传统视角）

## Honesty bars

- State the grade as the traditional view of this name — a culture layer the family or founder may care about, not a verified causal fact.
- Bazi computed from birth data always carries the "以专业排盘核对" caveat.
- If the user does not practice the tradition, one line suffices; if they clearly do, do the full chain analysis and still keep it from overriding the modern ranking.
