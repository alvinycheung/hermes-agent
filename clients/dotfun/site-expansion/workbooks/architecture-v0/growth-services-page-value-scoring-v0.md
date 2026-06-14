# dotfun Growth Services Page-Value Scoring v0

Status: working scoring for Growth Services under confirmed `/growth-services/{pillar}/{service}/` pattern. Run Good routes to AI Solutions instead of creating a Growth child branch.

## Files
- `workbooks/architecture-v0/growth-services-page-value-scoring-v0.csv`
- `workbooks/architecture-v0/growth-services-launch-architecture-v0.csv`
- SEMrush phrase pulls: `research/semrush/growth-services-phrase-pulls-v0/`

## Decision counts
- launch: 3
- launch-candidate: 4
- phase-two: 4
- section-on-parent: 3
- route-to-ai-solutions: 1

## Recommended launch
- `/growth-services/feel-good/digital-marketing/` — Digital Marketing (feel-good) — score 69.8 — phrase vol 114500 — business/source bias 25 ; SEMrush phrase rows 2, aggregate phrase volume 114500 ; SERP pattern supports standalone commercial service/agency pages ; high dotfun Growth Services fit
- `/growth-services/feel-good/seo-aeo/` — SEO / AEO (feel-good) — score 68.6 — phrase vol 61980 — business/source bias 24 ; SEMrush phrase rows 3, aggregate phrase volume 61980 ; SERP pattern supports standalone commercial service/agency pages ; high dotfun Growth Services fit
- `/growth-services/look-good/web-design/` — Web Design (look-good) — score 68.2 — phrase vol 45200 — business/source bias 25 ; SEMrush phrase rows 2, aggregate phrase volume 45200 ; SERP pattern supports standalone commercial service/agency pages ; high dotfun Growth Services fit

## Launch candidates
- `/growth-services/feel-good/paid-media/` — Paid Media (feel-good) — score 54.5 — phrase vol 5300 — business/source bias 18 ; SEMrush phrase rows 2, aggregate phrase volume 5300 ; SERP pattern supports standalone commercial service/agency pages ; medium-high service fit
- `/growth-services/feel-good/growth-marketing/` — Growth Marketing (feel-good) — score 51.7 — phrase vol 3820 — business/source bias 20 ; SEMrush phrase rows 3, aggregate phrase volume 3820 ; high dotfun Growth Services fit
- `/growth-services/look-good/web-development/` — Web Development (look-good) — score 52.5 — phrase vol 14800 — business/source bias 20 ; SEMrush phrase rows 1, aggregate phrase volume 14800 ; high dotfun Growth Services fit
- `/growth-services/look-good/video-production/` — Video Production (look-good) — score 48.6 — phrase vol 18000 — business/source bias 18 ; SEMrush phrase rows 2, aggregate phrase volume 18000 ; medium-high service fit

## Phase two
- `/growth-services/feel-good/fractional-growth-leadership/` — Fractional Growth Leadership (feel-good) — score 45.8 — phrase vol 1940 — business/source bias 14 ; SEMrush phrase rows 2, aggregate phrase volume 1940 ; SERP pattern supports standalone commercial service/agency pages ; medium service fit; validate proof and packaging
- `/growth-services/feel-good/content-strategy/` — Content Strategy (feel-good) — score 45.4 — phrase vol 2780 — business/source bias 18 ; SEMrush phrase rows 2, aggregate phrase volume 2780 ; medium-high service fit
- `/growth-services/look-good/branding-design/` — Branding Design (look-good) — score 45.0 — phrase vol 2190 — business/source bias 18 ; SEMrush phrase rows 2, aggregate phrase volume 2190 ; medium-high service fit
- `/growth-services/look-good/graphic-design/` — Graphic Design (look-good) — score 35.4 — phrase vol 8100 — business/source bias 10 ; SEMrush phrase rows 1, aggregate phrase volume 8100 ; medium service fit; validate proof and packaging

## Sections on parent
- `/growth-services/feel-good/gtm-strategy/` — GTM Strategy (feel-good) — score 27.2 — phrase vol 70 — business/source bias 10 ; SEMrush phrase rows 1, aggregate phrase volume 70 ; medium service fit; validate proof and packaging
- `/growth-services/feel-good/analytics-reporting/` — Analytics & Reporting (feel-good) — score 23.0 — phrase vol 20 — business/source bias 8 ; SEMrush phrase rows 1, aggregate phrase volume 20 ; medium service fit; validate proof and packaging
- `/growth-services/look-good/ad-design/` — Ad Design / Creative (look-good) — score 26.6 — phrase vol 50 — business/source bias 10 ; SEMrush phrase rows 1, aggregate phrase volume 50 ; medium service fit; validate proof and packaging

## Run Good routing
- `/ai-solutions/` — Run Good (run-good) — score 100 — phrase vol 0 — Perl confirmed Run Good should click into AI Solutions architecture for simplicity

## Strategic guardrails
- Feel Good owns marketing, search, paid, content, and growth strategy services.
- Look Good owns web, design, brand, video, and creative services.
- Run Good routes to `/ai-solutions/`; do not create `/growth-services/run-good/...` service children at launch.
- Use branded pillar paths in URLs, but use clear service-intent titles/H1s.
