# Preliminary Three-Wing Tree Map — dotfun Website Expansion

Status: v0.1 strategic starting point, based on supplied positioning/messaging doc, sample homepage messaging, confirmed naming, and current live crawl. This is **not final SEO architecture** yet. Query research and competitor/SERP validation still need to confirm page demand, naming, and prioritization.

## Confirmed brand hierarchy

```text
dotfun.co/
├── Parent brand: dotfun
│   ├── Iris Platform — software developed by dotfun
│   ├── dotfun AI Solutions — custom AI implementation / automation solutions
│   └── dotfun Growth Services — growth, marketing, design, web, and operator-led services
```

## Working URL architecture hypothesis

```text
/
├── iris/                                 # Iris Platform overview
│   ├── features/                         # Software feature pages
│   │   ├── ai-crm/
│   │   ├── ai-receptionist/
│   │   ├── ai-voice/
│   │   ├── ai-sms/
│   │   ├── ai-email/
│   │   ├── ai-web-chat/
│   │   ├── web-forms/
│   │   ├── ai-calendar/
│   │   ├── dashboards-analytics/
│   │   ├── automated-sequences/
│   │   └── outbound/
│   ├── solutions/                        # Product use-case / industry pages, if SERPs support
│   │   ├── home-services/                # current page exists at /iris/home-services
│   │   ├── legal-services/               # current page exists at /iris/legal-services
│   │   ├── property-management/          # current page exists at /iris/property-management
│   │   ├── funded-startups/              # candidate future strategic market page
│   │   ├── mid-market-b2b/               # candidate future strategic market page
│   │   ├── revops-teams/                 # candidate future strategic market page
│   │   └── marketing-teams/              # candidate future strategic market page
│   ├── compare/                          # Phase-two comparison/category pages
│   │   ├── iris-vs-legacy-crm/
│   │   ├── iris-vs-hubspot/
│   │   ├── iris-vs-attio/
│   │   └── ai-crm-vs-traditional-crm/
│   └── resources/                        # Product-led support content
│       ├── ai-growth-automation/
│       ├── speed-to-lead/
│       ├── lead-capture-automation/
│       └── crm-automation/
│
├── ai-solutions/                         # dotfun AI Solutions overview
│   ├── solutions/                        # Custom AI solution pages
│   │   ├── ai-agents/
│   │   ├── ai-audit/
│   │   ├── agents-as-a-service/
│   │   ├── rag-etl/
│   │   ├── business-automation/
│   │   ├── systems-integration/
│   │   ├── ai-semantic-search/
│   │   ├── dashboards-analytics/
│   │   ├── voice-sms-agents/
│   │   ├── application-development/
│   │   ├── ios-android-development/
│   │   ├── bizops-agents/
│   │   ├── finops-agents/
│   │   ├── marops-agents/
│   │   └── salesops-agents/
│   ├── use-cases/                        # Candidate workflow/problem pages
│   │   ├── automate-manual-reporting/
│   │   ├── connect-disconnected-tools/
│   │   ├── customer-facing-ai-agents/
│   │   ├── internal-operations-automation/
│   │   ├── gtm-workflow-automation/
│   │   └── data-intelligence-workflows/
│   └── resources/                        # AI implementation education
│       ├── custom-ai-agents/
│       ├── ai-workflow-automation/
│       ├── agentic-workflows/
│       └── ai-implementation-roadmap/
│
├── growth-services/                      # dotfun Growth Services overview
│   ├── solutions/                        # Buyer problem / outcome pages
│   │   ├── growth-strategy/
│   │   ├── demand-generation/
│   │   ├── pipeline-growth/
│   │   ├── revenue-operations-support/
│   │   ├── seo-aeo-growth/
│   │   ├── content-growth-system/
│   │   ├── campaign-execution/
│   │   ├── funnel-optimization/
│   │   ├── growth-reporting-analytics/
│   │   └── brand-to-demand-system/
│   ├── services/                         # Capability / deliverable pages
│   │   ├── fractional-growth-leadership/
│   │   ├── gtm-strategy/
│   │   ├── paid-media/
│   │   ├── paid-social/
│   │   ├── seo-aeo/
│   │   ├── content-strategy/
│   │   ├── web-strategy/
│   │   ├── web-design/
│   │   ├── web-development/
│   │   ├── branding-design/
│   │   ├── video/
│   │   ├── graphic-design/
│   │   ├── ad-design/
│   │   ├── analytics-reporting/
│   │   ├── crm-optimization/
│   │   └── marketing-automation/
│   ├── work/                             # Case studies; current /work exists
│   └── resources/                        # Growth education / blog clusters
│       ├── b2b-growth-marketing/
│       ├── fractional-marketing-team/
│       ├── answer-engine-optimization/
│       ├── creative-testing/
│       └── b2b-brand-positioning/
│
├── work/                                 # Cross-wing case study library, possibly filtered by wing
├── resources/ or blog/                   # Cross-wing education; must avoid cannibalization
├── about/
└── contact-us/
```

## Wing-by-wing extraction from positioning doc

### Iris Platform — software / feature architecture

Source signals:

- Current product wedge: AI CRM, web chat, SMS, AI receptionist/front desk, lead capture/follow-up workflows.
- Future expansion: SEO/AEO agents, content builders, data intelligence dashboards, reporting, workflow automation, growth agents, customer success agents, sales agents.
- Product portfolio list: AI CRM, AI Voice, AI Email, AI SMS, AI webchat, Web Forms, AI Calendar, Dashboards and Analytics, Automated Sequences, Outbound.

Recommended page-type logic:

- **Platform overview:** `/iris/`
- **Feature pages:** `/iris/features/{feature}/`
- **Industry/use-case pages:** keep under `/iris/solutions/{segment}/` only where product buyer demand exists.
- **Comparison pages:** phase-two, after competitor/SERP validation.

Current pages to rationalize:

- `/iris` and `/iris/product` appear duplicative in current crawl. Decide whether `/iris/product` should redirect/canonicalize to `/iris/` or become a platform/product detail page.
- Current vertical pages can remain as product solution pages if they match near-term SMB wedge.

### dotfun AI Solutions — custom AI solutions architecture

Source signals:

- Custom workflow design, AI stack implementation, agent builds, internal automation, external customer-facing agents, data workflows, operational intelligence systems.
- Product portfolio list: AI Audit, Agentic / Agents as a Service, AI Agents, RAG / ETL, Business Automations, Systems Integration and Optimization, Application Development, iOS / Android Development, AI and Semantic Search, Dashboards and Analytics, Voice and SMS Agents, BizOps / FinOps / MarOps / SalesOps Agents.

Recommended page-type logic:

- **Wing overview:** `/ai-solutions/`
- **Solution pages:** `/ai-solutions/solutions/{solution}/`
- **Workflow/use-case pages:** `/ai-solutions/use-cases/{workflow}/`
- **Proof pages:** case studies tagged to AI Solutions.

Architecture guardrail:

- AI Solutions should not use Iris feature-page language. It is custom implementation and automation. Link to Iris Platform only when a workflow can be powered by existing software.

### dotfun Growth Services — solution + service architecture

Source signals:

- Fractional growth leadership, GTM strategy, paid media, SEO/AEO, content strategy, web strategy, analytics, reporting, CRM optimization, funnel optimization, campaign execution.
- Current service packaging: Feel Good, Look Good, Run Good.
- Service details: Growth Marketing, Digital Marketing, Fractional Marketing Leader, Digital Advertising, SEO, Paid Social, Web design, branding, video, web development, graphic design, ad design, marketing automations, technical SEO remediation.

Recommended page-type logic:

- **Wing overview:** `/growth-services/`
- **Solution pages:** `/growth-services/solutions/{business-problem-or-outcome}/`
- **Service pages:** `/growth-services/services/{capability}/`
- **Case studies:** `/work/{case-study}/`, tagged or linked by relevant service/solution.
- **Resources:** educational clusters mapped into service/solution pages.

Architecture guardrail:

- Feel Good / Look Good / Run Good may remain as internal taxonomy or creative packaging, but SEO IA should likely expose clearer buyer-language pages unless research proves otherwise.

## Cross-wing cannibalization watchlist

- **AI agents:** Iris Platform may eventually have agents as features; dotfun AI Solutions sells custom agent builds. Ownership must distinguish productized feature vs custom solution.
- **Dashboards / analytics / data intelligence:** Iris feature if software-native; AI Solutions if custom data workflow; Growth Services if reporting/analytics as retainer service.
- **SEO/AEO/content automation:** Iris roadmap feature vs Growth Services capability vs AI Solutions automation build.
- **CRM optimization / workflow automation:** Iris owns AI CRM software; AI Solutions owns custom workflow integration; Growth Services owns retainer-level CRM optimization.
- **Voice/SMS:** Iris owns product features; AI Solutions owns custom voice/SMS agent builds for bespoke workflows.

## First-pass launch prioritization hypothesis

### Launch-critical

- Parent homepage routing section: one company, three ways to build your growth system.
- `/iris/` platform overview plus 4–6 strongest current/near-term feature pages.
- `/ai-solutions/` overview plus 4–6 highest-confidence solution pages.
- `/growth-services/` overview plus retained/reworked priority services and solutions.
- Cross-wing case-study tagging and internal links.

### Phase two

- Comparison pages.
- Deep persona/industry pages for funded startups, RevOps, marketing teams, mid-market B2B.
- Large resource hub taxonomy.
- Glossary/reference pages for AI growth automation, AI CRM, agentic workflows, AEO/GEO, etc.

## Open decisions before keyword research becomes final architecture

1. Whether `/ai-solutions/solutions/` is too redundant, or if solution pages should live directly under `/ai-solutions/{solution}/`.
2. Whether `/growth-services/services/` and `/growth-services/solutions/` should be separate directories or merged into one clearer page-type taxonomy.
3. Whether current `/offerings/feel-good`, `/offerings/look-good`, `/offerings/run-good` become redirects, retained brand pages, or internal-only groupings.
4. Whether current `/solutions/run-good/ai-enablement` moves into dotfun AI Solutions.
5. Whether `/blog` vs `/blogs` should be normalized during the rebuild.
6. Which Iris current vertical pages remain launch priorities after competitor/SERP research.
