# Initial Competitor Research Findings — dotfun Site Expansion

Status: v0.1 research notes. This is recorded research, not final IA. Next pass should deepen query/SERP validation and page-value scoring.

## Executive takeaways

1. **Perl’s Iris direction is correct.** My AI Front Desk is not just a single AI receptionist page. It uses a deep architecture across platform pages, verticals, alternatives, glossary/resource pages, integration pages, buyer guides, ROI pages, and support/guardrail content.
2. **Iris should be treated like B2B SaaS.** The architecture should include a platform overview, feature pages, vertical/solution pages, comparison pages, integrations/resources, and proof.
3. **AI Solutions needs custom-build framing.** Varick is more department/function/proof-led than feature-led. Broader SERPs target “custom AI agent development services,” “AI agent development company,” “enterprise AI agents,” and “workflow automation.”
4. **Growth Services should preserve the dotfun packaging.** Run Good / Feel Good / Look Good should remain part of the story, but research should decide whether SEO pages live under those labels or underneath more explicit service/solution URLs.

## Iris Platform research

### My AI Front Desk — main site crawl

Captured: **137 pages**

Observed architecture patterns:

- Platform depth: **32 `/platform` pages**
- Vertical/industry clusters:
  - multifamily: 22 pages
  - therapy: 14 pages
  - retail: 13 pages
  - industries-we-serve: 5 pages
- CRM glossary: 13 pages
- CRM / alternative pages:
  - `/ai-crm`
  - `/best-crm-for`
  - `/hubspot-alternative`
  - `/salesforce-alternative`
  - `/pipedrive-alternative`
  - `/zoho-crm-alternative`
  - `/monday-crm-alternative`
  - `/gohighlevel-alternative`
  - `/keap-alternative`
  - `/close-crm-alternative`
  - `/activecampaign-alternative`
  - `/copper-crm-alternative`
  - `/freshsales-alternative`
  - `/attio-alternative`
- Feature/core pages:
  - `/features`
  - `/ai-receptionist`
  - `/ai-crm`
- Proof and conversion pages:
  - testimonials
  - customer stories
  - pricing
  - contact sales
  - partner / white label

Architecture implication for Iris:

- Iris should not only have `/iris` and 3 vertical pages.
- Iris should have a real product IA:
  - platform overview
  - feature pages
  - vertical/solution pages
  - alternative/comparison pages
  - glossary / resource pages
  - integrations and setup pages where supported
  - case studies / proof

### My AI Front Desk — llms/AEO-oriented crawl

Captured: **88 pages**

Notable page themes:

- Industry/vertical pages:
  - real estate
  - property management
  - home services
  - plumbing / HVAC
  - automotive service
  - med spas
  - law firms
  - healthcare / dental
  - fitness studios
  - franchise / multi-location
- Feature / capability pages:
  - missed-call text back
  - call transcription and SMS follow-ups
  - in-call booking
  - Google Calendar integration
  - Zapier integration
  - HubSpot integration
  - Salesforce call logging
  - voice library
  - customizable voices and personality controls
  - call routing
  - simultaneous calls
  - automated SMS reminders
  - privacy / training data / guardrails
- Buying / evaluation pages:
  - AI receptionist alternatives
  - ROI vs human answering
  - buyer guides
  - setup checklist
  - pricing / usage
  - support by plan
  - reliability / call quality

Architecture implication for Iris:

- Vertical pages are an SEO growth lever, not an edge case.
- Iris can pursue both commercial vertical landing pages and AEO/GEO support pages.
- Useful page-type candidates:
  - `AI receptionist for {industry}`
  - `{industry} AI receptionist playbook`
  - `{feature} for {workflow}`
  - integrations pages
  - ROI / buyer guide / alternatives pages
  - reliability, guardrails, privacy, and setup pages

### Attio

Captured: **135 pages**

Observed architecture:

- 103 app/integration pages
- 8 platform pages
- 2 solution pages
- pricing, customers, templates, partners, experts, help, changelog

Architecture implication for Iris:

- Attio is useful for B2B SaaS structure, especially integrations/apps and platform modularity.
- Iris should consider integration pages once product support is real, especially if CRM/calendar/SMS/chat ecosystem compatibility matters.

### Monaco

Captured: **9 pages**

Observed architecture:

- Lean startup-focused revenue platform architecture.
- Product page uses modules around TAM, signals, sequences, pipeline, call recording, CRO copilot.

Architecture implication for Iris:

- Monaco is useful for category language and startup/B2B SaaS positioning.
- It is not a deep SEO architecture model compared with My AI Front Desk.

## dotfun AI Solutions research

### Varick Agents

Captured: **6 pages** from crawl:

- homepage
- finance case study
- sales case study
- operations case study
- careers
- privacy

Additional fetched demo suite:

- Finance / CFO demo
- Sales / CRO demo
- Operations demo
- Engineering demo
- Marketing / CMO demo

Architecture implication:

- Varick leans into department transformation and proof pages rather than a broad solution-page library.
- dotfun AI Solutions should likely combine:
  - custom AI solution pages
  - department/function use-case pages
  - proof/case-study pages
  - implementation/audit pages

### Broader custom AI agents SERP

Seed search surfaced competitors/pages targeting:

- custom AI agent development services
- AI agent development company
- AI agent development services
- custom AI agents for business
- enterprise AI agents
- multi-agent systems
- AI workflow automation
- AI integration and implementation

Architecture implication:

- dotfun AI Solutions should not only target “AI agents.” It needs service-intent pages around custom development, implementation, workflow automation, systems integration, and department-specific agents.

## dotfun Growth Services research status

Not started deeply yet. Current source constraints:

- Keep Run Good, Feel Good, Look Good.
- Growth Services page should explain the model.
- Feel Good likely owns digital marketing, SEO/AEO, paid, growth marketing, fractional leadership.
- Look Good likely owns design, web design, video, creative, brand, development.
- Run Good may route into dotfun AI Solutions or hold operational services that are not purely AI Solutions.

## Immediate gap hypotheses

### Iris Platform likely missing

- `/iris/features/ai-crm/`
- `/iris/features/ai-receptionist/`
- `/iris/features/ai-sms/`
- `/iris/features/ai-web-chat/`
- `/iris/features/ai-calendar/`
- `/iris/features/dashboards-analytics/`
- `/iris/solutions/{industry}/` vertical set beyond current 3
- `/iris/compare/{competitor-or-category}/`
- `/iris/integrations/{integration}/` if product-ready
- `/iris/resources/{buyer-guide-or-glossary}/`

### dotfun AI Solutions likely missing

- `/ai-solutions/`
- custom AI agent development page
- AI workflow automation page
- AI systems integration page
- AI audit page
- department/function pages: finance, sales, operations, marketing, RevOps/MarOps, customer service
- case-study/proof structure

### dotfun Growth Services likely missing / needs reframe

- `/growth-services/` overview explaining Feel Good / Look Good / Run Good
- Feel Good service cluster
- Look Good service cluster
- decision on Run Good: retain as operations/automation services page or route to AI Solutions
- redirects/reframes for current `/offerings/*` and `/solutions/*` pages

## Next research passes

1. My AI Front Desk page taxonomy extraction: convert all observed pages into page-type categories and map to Iris candidate pages.
2. AI Solutions SERP expansion: research custom AI agent development competitors beyond Varick and extract common page patterns.
3. dotfun Growth Services competitor scan: growth agencies, fractional CMO providers, SEO/AEO agencies, web/design studios.
4. Page-value scoring: standalone page vs supporting keyword vs no page.
