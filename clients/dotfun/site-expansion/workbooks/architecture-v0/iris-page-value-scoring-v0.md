# Iris Platform Page-Value Scoring v0

Status: **working architecture scoring**, not final sitemap. Inputs: dotfun source docs, current Iris crawl, competitor crawl, My AI Front Desk taxonomy, Attio/Monaco references, SEMrush clean relevant organic view.

## Files
- `workbooks/architecture-v0/iris-page-value-scoring-v0.csv`
- `workbooks/architecture-v0/iris-launch-architecture-v0.csv`

## Scoring totals
- Total Iris candidate URLs scored: 147
- launch / standalone-page: 15
- launch-candidate / standalone-page: 2
- phase-two / phase-two: 41
- phase-two / section-on-parent: 55
- phase-two / supporting-resource: 34

## Page family totals
- vertical-solution: 58
- resource: 34
- comparison: 21
- integration: 16
- feature: 15
- platform-overview: 1
- feature-overview: 1
- solutions-overview: 1

## Recommended Iris launch / launch-candidate set
- `/iris/` — platform-overview, launch, score 113
- `/iris/features/` — feature-overview, launch, score 98
- `/iris/features/ai-crm/` — feature, launch, score 90
- `/iris/features/ai-receptionist/` — feature, launch, score 81
- `/iris/features/ai-calendar/` — feature, launch, score 75
- `/iris/features/ai-sms/` — feature, launch, score 74
- `/iris/features/ai-voice/` — feature, launch, score 65
- `/iris/features/ai-web-chat/` — feature, launch, score 65
- `/iris/features/dashboards-analytics/` — feature, launch, score 65
- `/iris/features/outbound/` — feature, launch, score 65
- `/iris/features/web-forms/` — feature, launch, score 65
- `/iris/solutions/` — solutions-overview, launch, score 98
- `/iris/solutions/property-management/` — vertical-solution, launch, score 90
- `/iris/solutions/home-services/` — vertical-solution, launch, score 85
- `/iris/solutions/legal-services/` — vertical-solution, launch, score 85
- `/iris/solutions/real-estate/` — vertical-solution, launch-candidate, score 58
- `/iris/solutions/residential-property-management/` — vertical-solution, launch-candidate, score 58

## Strategic decisions encoded
- Iris should be treated as B2B/B2B SaaS: platform overview -> feature overview -> feature pages.
- Iris should also have vertical/solution pages. My AI Front Desk validates this heavily with vertical/solution clusters and SEMrush evidence around AI receptionist/vertical-intent terms.
- Current Iris verticals are forced into launch scoring: home services, legal services, property management.
- Comparison, integration, and resource pages are mostly phase two unless product support/proof and keyword evidence are strong enough.
- Feature pages must remain productized Iris pages. Custom builds, custom Iris extensions, and bespoke workflows route to dotfun AI Solutions.

## Immediate review questions
1. Are all core Iris features in the launch set truly product-ready or approved to market?
2. Which adjacent verticals beyond home services, legal, property management, real estate, and residential property management have proof/case examples?
3. Should `/iris/product` redirect/canonicalize to `/iris/features/` or remain as a different page? Current crawl suggests potential duplication.
## Decisions confirmed by Perl — 2026-06-07

- The current Iris launch feature set is approved as features Iris has today: AI CRM, AI receptionist, AI calendar, AI SMS, AI voice, AI web chat, dashboards/analytics, outbound, and web forms.
- Future feature ideas exist separately but should not affect the current launch architecture.
- Iris vertical/solution prioritization should be based primarily on which My AI Front Desk pages rank and gain traffic. Iris currently leans SMB; broader dotfun case studies/use cases lean more mid-market.
- `/iris/product` should map to `/iris/features/`. Treat `/iris/features/` as the feature overview URL and add `/iris/product` to redirect/canonical decisions.

