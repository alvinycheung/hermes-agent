# dotfun Current Architecture Baseline

Source: live crawl of `https://dotfun.co/` and `https://dotfun.co/iris` on 2026-06-07.

## Routing rule for this project

- Anything on `dotfun.co/iris*` is treated as **current Iris Platform architecture**.
- Anything else on `dotfun.co` is treated as **current dotfun Growth Services architecture**.

## Crawl inventory

- Total HTML pages captured: 38
- dotfun-growth-services-current: 33 pages
- iris-current-platform: 5 pages

## Current dotfun Growth Services architecture

Current non-Iris pages show a services-led agency architecture with:

- Home / about / contact / work pages
- Three current offering pillars: `feel-good`, `look-good`, `run-good`
- Deeper solution pages for digital marketing, branding/design, and AI enablement
- Case studies under `/work/*`
- Blog library under `/blogs/*` covering B2B growth, AEO/SEO, fractional marketing, design, AI agents, and tooling
- Utility/tool page: `/tools/markdown-studio`

### Growth Services URLs
- `https://dotfun.co/` — dotfun | Human-First Growth Marketing & Design Agency
- `https://dotfun.co/about` — About dotfun | Growth Marketing & Digital Agency
- `https://dotfun.co/blog` — Blog | Growth Marketing & Web Development Insights
- `https://dotfun.co/blogs/aeo-profitable-shift-marketing-2026` — Why AEO Is Marketing's Profitable Shift in 2026 | dotfun
- `https://dotfun.co/blogs/ai-agents-for-marketing-10-workflows-to-automate-first` — AI Agents for Marketing: 10 Workflows to Automate First | dotfun
- `https://dotfun.co/blogs/answer-engine-optimization-b2b` — Answer Engine Optimization for B2B: SEO Fundamentals That Win in 2026
- `https://dotfun.co/blogs/b2b-growth-marketing-what-actually-works-after-series-a` — B2B Growth Marketing After Series A: Practical 90-Day Plan
- `https://dotfun.co/blogs/data-driven-design-creative-testing-pipeline-quality` — Creative Testing for Better B2B Pipeline Quality | dotfun
- `https://dotfun.co/blogs/fractional-marketing-team-vs-in-house-hiring` — Fractional Marketing Team vs In-House Hiring | dotfun
- `https://dotfun.co/blogs/growth-stage-marketing-where-to-start-b2b` — Growth Stage Marketing: Where to Start in B2B | DotFun
- `https://dotfun.co/blogs/instantly-connect-claude-code-to-jira-and-confluence-with-atlassian-mcp` — Connect Claude Code to JIRA & Confluence with Atlassian MCP
- `https://dotfun.co/blogs/the-story-of-dotfun` — The Story of dotfun | How We Built a Growth Agency
- `https://dotfun.co/blogs/unique-selling-proposition-b2b-brands` — Unique Selling Propositions: 10 B2B Brands That Get It Right | DotFun
- `https://dotfun.co/blogs/webflow-vs-wordpress-vs-shopify-which-platform-fits-your-needs-best` — Webflow vs WordPress vs Shopify 2025: Platform Comparison
- `https://dotfun.co/blogs/what-is-growth-marketing-key-differences-from-digital-marketing` — Growth Marketing vs Digital Marketing: Full Guide 2025
- `https://dotfun.co/blogs/why-hire-fractional-cmo-growth-marketing-team` — Why Hire a Fractional CMO or Growth Marketing Team | DotFun
- `https://dotfun.co/blogs/will-ai-replace-graphic-designers` — Will AI Replace Graphic Designers? The Future of Design
- `https://dotfun.co/contact-us` — Contact dotfun | Growth Marketing & Design Agency
- `https://dotfun.co/legal/privacy-policy` — Privacy Policy | dotfun Data Protection & User Rights
- `https://dotfun.co/legal/terms-and-conditions` — Terms and Conditions | dotfun Website Usage Policy
- `https://dotfun.co/offerings/feel-good` — Growth Marketing | Feel Good Solutions by dotfun
- `https://dotfun.co/offerings/look-good` — Look Good | Branding, Design & Video Services - dotfun
- `https://dotfun.co/offerings/run-good` — Run Good | AI Agents, Operations & Custom Apps - dotfun
- `https://dotfun.co/solutions/feel-good/digital-marketing` — Digital Marketing Services for Demand and Pipeline | dotfun
- `https://dotfun.co/solutions/look-good/branding-design` — Branding Design Services for Sharper Brand Systems | dotfun
- `https://dotfun.co/solutions/run-good/ai-enablement` — AI Enablement for Practical Business Automation | dotfun
- `https://dotfun.co/tools/markdown-studio` — Free Markdown Editor & HTML Converter | dotfun
- `https://dotfun.co/work` — Work | Growth Marketing Case Studies | dotfun
- `https://dotfun.co/work/drone-adair` — Drone Adair Case Study | Interactive Drone Tech Website
- `https://dotfun.co/work/edaphic-solutions` — Edaphic Solutions Case Study | Multi-Location Growth Strategy
- `https://dotfun.co/work/moody-blooms` — Moody Blooms Case Study | Floral Design Website & SEO
- `https://dotfun.co/work/the-libido-fairy` — The Libido Fairy Case Study | Email Marketing Success Story
- `https://dotfun.co/work/widget-pal-and-pixel-pets` — Widget Pal & Pixel Pets Case Study | Mobile App Branding

## Current Iris Platform architecture

Current Iris pages are focused on AI receptionist / AI answering service use cases, especially verticalized service businesses.

### Iris URLs
- `https://dotfun.co/iris` — AI Receptionist & AI Answering Service for Business | IRIS
- `https://dotfun.co/iris/home-services` — AI Home Services Answering Service | 24/7 AI Receptionist | IRIS
- `https://dotfun.co/iris/legal-services` — AI Legal Receptionist & Answering Service for Law Firms | IRIS
- `https://dotfun.co/iris/product` — AI Receptionist & AI Answering Service for Business | IRIS
- `https://dotfun.co/iris/property-management` — AI Property Management Answering Service | 24/7 AI Receptionist | IRIS

## Initial architecture implications

- Current Iris SEO footprint is narrow and conversion-led: AI receptionist / answering service, with vertical pages for home services, legal services, and property management.
- New positioning expands Iris beyond AI receptionist into AI growth automation, AI CRM, web chat, SMS, custom agents, data intelligence, SEO/AEO agents, dashboards, and operator-led services. This creates a gap between current `/iris` architecture and future brand architecture.
- Current dotfun services architecture already maps loosely to future Growth Services through Feel Good / Look Good / Run Good, but the new model likely needs clearer separation between Growth Services, AI Solutions, and Iris Platform to avoid cannibalization.
- Several crawled internal links point to old `/blog/...` paths that 404 while live articles are under `/blogs/...`; this should become a technical SEO cleanup item.
