# Research Base v0 — dotfun Site Expansion

Status: **research base started**, not final architecture. Date: 2026-06-07.

## SEMrush availability

Updated after searching prior Grepr/technical-seo workspace files without exposing secret values.

- SEMrush CLI found: **no**
- SEMrush smoke script found: **yes** at technical-seo workspace scripts
- SEMrush environment variable found: **yes** in the technical-seo workspace `.env` as `SEMRUSH_API`
- SEMrush API smoke test: **reachable**
- SEMrush research output: `research/semrush/semrush-research-pull-v0.md` and `research/semrush/semrush-clean-relevant-organic-v0.md`

Implication: SEMrush is available through the technical-seo workspace `.env`. Secret values are not printed or stored in research outputs. SEMrush rows should be filtered before architecture conclusions because My AI Front Desk has large unrelated area-code rankings.

## Files created

- `workbooks/research-base/iris-competitor-page-taxonomy-v0.csv`
- `workbooks/research-base/page-candidate-evidence-base-v0.csv`
- `workbooks/research-base/ai-growth-serp-page-fetches-v0.csv`
- `research/competitors/serp-page-fetches-v0.json`
- `research/semrush/semrush-research-pull-v0.md`
- `research/semrush/semrush-clean-relevant-organic-v0.md`
- `research/semrush/semrush-clean-relevant-organic-v0.csv`
- `research/base/research-base-v0.md`

## Iris Platform evidence base

Competitor/source page counts:

- My AI Front Desk: 137 pages
- My AI Front Desk LLM/AEO: 88 pages
- Attio: 135 pages
- Monaco: 9 pages

My AI Front Desk / Frontdesk observed page-type counts:

- vertical-solution: 63
- other: 34
- feature: 32
- comparison: 21
- supporting-resource: 17
- integration: 16
- glossary-resource: 13
- proof-case-study: 12
- roi-pricing-tool: 6
- partner-channel: 3
- feature-overview: 3
- home-platform-overview: 2
- resource-library: 2
- conversion: 1

Key implications:

- My AI Front Desk validates **feature pages** and **vertical/solution pages** together.
- Their visible IA includes platform pages, industry clusters, alternatives, glossary/resource pages, integrations, ROI/tools, testimonials, and customer stories.
- Iris should start with platform overview + feature pages + vertical pages, then score comparisons, integrations, and AEO/GEO support pages for launch vs phase two.

## AI Solutions evidence base

Sources checked:

- Varick Agents crawl and demo suite.
- SERP/web results for custom AI agent development and AI agent development services.
- Direct fetches from Deviniti, EffectiveSoft, Appinventiv, NP Group, Tech.us, and attempted Nerdery.

Initial implication:

- Strong commercial language exists around `custom AI agent development`, `AI agent development services`, workflow automation, enterprise agents, and systems integration.
- Varick supports a department/function architecture: finance, sales, operations, engineering, marketing.
- dotfun AI Solutions should not be just “agents”; it should distinguish custom build, workflow automation, integrations, audits, and department use cases.

## Growth Services evidence base

Sources checked:

- SERP/web results for fractional CMO, growth marketing agency, SEO/AEO services, B2B growth agencies.
- Direct fetches attempted for O8, Moving Minds, NoGood, KLA Group, Logical Media, Boundless.
- Successful direct fetches: Moving Minds, Boundless. Several pages returned 403/SSL limitations and remain search-result evidence only.

Initial implication:

- Growth Services overview should preserve Run Good / Feel Good / Look Good.
- SEO-facing service pages likely need clear service URLs, even if internally grouped under Feel Good / Look Good.
- Research will need to validate whether child URLs should be branded (`/growth-services/feel-good/seo-aeo/`) or explicit (`/growth-services/services/seo-aeo/`).

## Next scoring step

Score every candidate in `page-candidate-evidence-base-v0.csv` as:

- standalone-page
- section-on-parent
- supporting-resource
- phase-two
- no-page

Required additional evidence before final IA:

1. SEMrush export/API for My AI Front Desk top organic pages and ranking keywords.
2. SEMrush or equivalent keyword gap for AI agent development competitors.
3. Growth Services competitor organic page discovery.
4. dotfun offer/proof confirmation for any commercial page we recommend.
