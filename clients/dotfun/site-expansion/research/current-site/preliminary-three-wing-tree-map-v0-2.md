# Preliminary Three-Wing Tree Map v0.2 — Research-Adjusted

Status: updated after Perl's notes and first competitor crawl/research. Still not final IA. This version changes three strategic assumptions:

1. Iris **should** have vertical / solution pages, not just feature pages.
2. dotfun AI Solutions is custom AI build work, including custom Iris extensions where needed, but is not Iris Platform.
3. dotfun Growth Services keeps the Run Good / Feel Good / Look Good story, with service nesting likely under Feel Good and Look Good; Run Good likely routes into AI Solutions unless research supports separate operations-service pages.

## Updated working tree

```text
dotfun.co/
├── /                                      # Parent brand homepage
│   └── routes into three wings
│
├── /iris/                                 # Iris Platform overview
│   ├── /features/                         # B2B SaaS feature pages
│   │   ├── /ai-crm/
│   │   ├── /ai-receptionist/
│   │   ├── /ai-voice/
│   │   ├── /ai-sms/
│   │   ├── /ai-email/
│   │   ├── /ai-web-chat/
│   │   ├── /web-forms/
│   │   ├── /ai-calendar/
│   │   ├── /dashboards-analytics/
│   │   ├── /automated-sequences/
│   │   └── /outbound/
│   ├── /solutions/                        # Vertical / industry / use-case pages
│   │   ├── /home-services/                # current exists
│   │   ├── /legal-services/               # current exists
│   │   ├── /property-management/          # current exists
│   │   ├── /real-estate/                  # My AI Front Desk pattern
│   │   ├── /dental-medical/               # My AI Front Desk pattern; validate fit
│   │   ├── /fitness-studios/              # My AI Front Desk pattern; validate fit
│   │   ├── /med-spas/                     # My AI Front Desk pattern; validate fit
│   │   ├── /automotive-services/          # My AI Front Desk pattern; validate fit
│   │   ├── /franchise-multi-location/     # My AI Front Desk pattern; validate fit
│   │   ├── /funded-startups/              # strategic B2B SaaS market
│   │   ├── /mid-market-b2b/               # strategic B2B SaaS market
│   │   ├── /revops-teams/
│   │   └── /marketing-teams/
│   ├── /integrations/                     # If product support is real
│   │   ├── /hubspot/
│   │   ├── /salesforce/
│   │   ├── /google-calendar/
│   │   ├── /zapier/
│   │   └── /service-business-tools/
│   ├── /compare/                          # Phase-two competitor/category pages
│   │   ├── /hubspot-alternative/
│   │   ├── /salesforce-alternative/
│   │   ├── /attio-alternative/
│   │   ├── /ai-crm-vs-traditional-crm/
│   │   └── /ai-receptionist-alternatives/
│   └── /resources/                        # AEO/GEO support cluster
│       ├── /ai-receptionist-buyer-guide/
│       ├── /ai-crm-glossary/
│       ├── /speed-to-lead/
│       ├── /missed-call-text-back/
│       ├── /lead-qualification-routing/
│       ├── /call-quality-reliability/
│       └── /roi-ai-receptionist-vs-human-answering/
│
├── /ai-solutions/                         # dotfun AI Solutions overview
│   ├── /solutions/                        # Custom AI solution/service-intent pages
│   │   ├── /custom-ai-agent-development/
│   │   ├── /ai-agent-development-services/
│   │   ├── /ai-workflow-automation/
│   │   ├── /ai-systems-integration/
│   │   ├── /ai-audit/
│   │   ├── /rag-etl/
│   │   ├── /semantic-search/
│   │   ├── /voice-sms-agents/
│   │   ├── /custom-iris-builds/
│   │   └── /dashboards-data-intelligence/
│   ├── /departments/                      # Varick-style function pages
│   │   ├── /finance/
│   │   ├── /sales/
│   │   ├── /operations/
│   │   ├── /marketing/
│   │   ├── /engineering/
│   │   ├── /revops/
│   │   └── /customer-service/
│   ├── /use-cases/
│   │   ├── /automate-manual-reporting/
│   │   ├── /connect-disconnected-tools/
│   │   ├── /customer-facing-ai-agents/
│   │   ├── /internal-operations-automation/
│   │   └── /gtm-workflow-automation/
│   └── /case-studies/ or /work/?wing=ai-solutions
│
├── /growth-services/                      # dotfun Growth Services overview
│   ├── explains Run Good / Feel Good / Look Good
│   ├── /feel-good/                        # growth + marketing services group
│   │   ├── /digital-marketing/
│   │   ├── /growth-marketing/
│   │   ├── /seo-aeo/
│   │   ├── /content-strategy/
│   │   ├── /paid-media/
│   │   ├── /paid-social/
│   │   ├── /fractional-growth-leadership/
│   │   ├── /gtm-strategy/
│   │   ├── /campaign-execution/
│   │   └── /analytics-reporting/
│   ├── /look-good/                        # brand/design/web/creative services group
│   │   ├── /branding-design/
│   │   ├── /web-design/
│   │   ├── /web-development/
│   │   ├── /video-production/
│   │   ├── /graphic-design/
│   │   ├── /ad-design/
│   │   └── /creative-testing/
│   ├── /run-good/                         # likely bridge/routing page
│   │   ├── links to /ai-solutions/
│   │   ├── may retain operations/automation service pages only if research supports
│   │   └── may absorb current /solutions/run-good/ai-enablement via redirect or transition
│   └── /work/ or global /work/             # case studies tagged by wing/service
│
├── /work/                                  # Cross-wing proof library
├── /resources/ or /blog/                   # Cross-wing resources with owner tags
├── /about/
└── /contact-us/
```

## Research-driven adjustments from v0.1

### Iris Platform

- Upgrade vertical pages from “if SERPs support” to a major research branch.
- My AI Front Desk shows strong use of verticals, playbooks, buyer guides, ROI pages, integrations, alternatives, and glossary-style support pages.
- Treat Iris as B2B SaaS with feature architecture and vertical architecture operating together.

### dotfun AI Solutions

- Add custom AI agent development and AI agent development services as likely high-intent pages.
- Add department/function pages inspired by Varick: finance, sales, operations, engineering, marketing.
- Add custom Iris builds as a bridge page or subsection, but keep it under AI Solutions because it is custom build work, not base Iris Platform.

### dotfun Growth Services

- Preserve Run Good / Feel Good / Look Good.
- Working structure:
  - Feel Good = growth/marketing services
  - Look Good = brand/design/web/creative services
  - Run Good = bridge to AI Solutions or limited operations/automation service grouping
- Pushback to validate with research: SEO-facing URLs under `/growth-services/feel-good/digital-marketing/` may be less obvious than `/growth-services/services/digital-marketing/`. We should compare internal storytelling value vs search clarity during final IA.

## Page-value scoring rule for next pass

Each candidate page should get one of:

- `standalone-page`: clear search/business value and distinct intent.
- `section-on-parent`: useful related keyword but not enough distinct intent.
- `supporting-resource`: educational/AEO page supporting a commercial page.
- `phase-two`: valid but not launch-critical.
- `no-page`: insufficient fit, low intent, or cannibalization risk.
