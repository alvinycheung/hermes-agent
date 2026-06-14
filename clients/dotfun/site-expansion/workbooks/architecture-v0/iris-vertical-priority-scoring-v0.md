# Iris Vertical Priority Scoring v0

Status: working prioritization based on Perl direction: use My AI Front Desk ranking/traffic evidence as primary input; Iris currently leans SMB.

## Files
- `workbooks/architecture-v0/iris-vertical-priority-scoring-v0.csv`
- SEMrush vertical phrase pulls: `research/semrush/iris-vertical-phrase-pulls-v0/`
- My AI Front Desk organic pulls: `research/semrush/myaifrontdesk-domain-organic-us.csv` and `research/semrush/llms-myaifrontdesk-domain-organic-us.csv`

## Decision counts
- launch: 3
- launch-candidate: 1
- phase-two: 2
- phase-two-monitor: 4
- no-page-now: 7

## Recommended launch
- `/iris/solutions/property-management/` — Property Management — score 82.8 — MyAIFD organic rows 0, phrase vol 2750 — current dotfun Iris vertical exists ; My AI Front Desk crawl has 15 relevant page(s) ; SEMrush phrase-demand evidence: aggregate related volume 2750 ; SMB/product-led fit
- `/iris/solutions/home-services/` — Home Services — score 74.4 — MyAIFD organic rows 0, phrase vol 70 — current dotfun Iris vertical exists ; My AI Front Desk crawl has 5 relevant page(s) ; SEMrush phrase-demand evidence: aggregate related volume 70 ; SMB/product-led fit
- `/iris/solutions/legal-services/` — Legal Services / Law Firms — score 71.4 — MyAIFD organic rows 0, phrase vol 2200 — current dotfun Iris vertical exists ; My AI Front Desk crawl has 2 relevant page(s) ; SEMrush phrase-demand evidence: aggregate related volume 2200 ; SMB/product-led fit

## Launch candidates / high-priority validation
- `/iris/solutions/therapy/` — Therapy Practices — score 82.6 — MyAIFD organic rows 4, phrase vol 140 — My AI Front Desk crawl has 15 relevant page(s) ; My AI Front Desk SEMrush organic across main+LLMS domains: 4 rows, aggregate volume 13980 ; My AI Front Desk top-10 ranking signal ; SEMrush phrase-demand evidence: aggregate related volume 140 ; SMB/product-led fit

## Phase two
- `/iris/solutions/medical/` — Medical Practices — score 67.4 — MyAIFD organic rows 2, phrase vol 2970 — My AI Front Desk crawl has 4 relevant page(s) ; My AI Front Desk SEMrush organic across main+LLMS domains: 2 rows, aggregate volume 13200 ; My AI Front Desk top-30 ranking signal ; SEMrush phrase-demand evidence: aggregate related volume 2970
- `/iris/solutions/small-business/` — Small Business — score 59.9 — MyAIFD organic rows 2, phrase vol 0 — My AI Front Desk crawl has 5 relevant page(s) ; My AI Front Desk SEMrush organic across main+LLMS domains: 2 rows, aggregate volume 960 ; My AI Front Desk top-10 ranking signal ; SMB/product-led fit

## Monitor / do not launch now
- `/iris/solutions/real-estate/` — Real Estate — score 46.5 — MyAIFD organic rows 0, phrase vol 1340 — My AI Front Desk crawl has 14 relevant page(s) ; SEMrush phrase-demand evidence: aggregate related volume 1340 ; SMB/product-led fit
- `/iris/solutions/dental/` — Dental Practices — score 37.5 — MyAIFD organic rows 0, phrase vol 750 — My AI Front Desk crawl has 3 relevant page(s) ; SEMrush phrase-demand evidence: aggregate related volume 750 ; SMB/product-led fit
- `/iris/solutions/fitness/` — Fitness Studios / Gyms — score 34.2 — MyAIFD organic rows 0, phrase vol 20 — My AI Front Desk crawl has 4 relevant page(s) ; SEMrush phrase-demand evidence: aggregate related volume 20 ; SMB/product-led fit
- `/iris/solutions/retail/` — Retail — score 30 — MyAIFD organic rows 0, phrase vol 0 — My AI Front Desk crawl has 13 relevant page(s) ; SMB/product-led fit

## No page now
- `/iris/solutions/med-spas/` — Med Spas — score 24.0
- `/iris/solutions/multifamily/` — Multifamily — score 22
- `/iris/solutions/restaurants/` — Restaurants — score 21.7
- `/iris/solutions/salons/` — Salons — score 20.9
- `/iris/solutions/automotive/` — Automotive Services — score 19
- `/iris/solutions/accounting-firms/` — Accounting Firms — score 16
- `/iris/solutions/franchise-multi-location/` — Franchise / Multi-location — score 14

## Notes
- Current dotfun Iris verticals remain launch regardless of competitor ranking strength: home services, legal services, property management.
- My AI Front Desk has broad vertical coverage; not every observed vertical should become a launch page for Iris unless SMB fit and product proof are credible.
- Phrase-demand evidence validates market demand, but My AI Front Desk organic rows/ranking URLs are the cleaner competitor-traffic signal.
- Residential property management is folded into the broader property management launch page for now to avoid cannibalization.
