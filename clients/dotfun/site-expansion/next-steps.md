# dotfun Site Expansion — Next Steps / Handoff

Last updated: 2026-06-07

Purpose: quick restart file if the session disconnects. Use this alongside `STATUS.md`, `README.md`, and project-local `AGENTS.md`.

## Current project focus

Build the dotfun website expansion architecture for three public wings:

1. **Iris Platform** — B2B SaaS software developed by dotfun. Current Iris positioning leans SMB.
2. **dotfun AI Solutions** — custom AI builds, workflow automation, custom Iris extensions, AI implementation.
3. **dotfun Growth Services** — current services business, organized under Run Good / Feel Good / Look Good.

## Confirmed architecture decisions

### Parent/wings

- Parent brand: `dotfun`
- Public wings:
  - `Iris Platform`
  - `dotfun AI Solutions`
  - `dotfun Growth Services`

### Growth Services URL pattern

Confirmed pattern:

```text
/growth-services/{pillar}/{service}/
```

Examples:

```text
/growth-services/feel-good/digital-marketing/
/growth-services/feel-good/seo-aeo/
/growth-services/look-good/web-design/
/growth-services/look-good/video-production/
```

Rule: URL can include the branded pillar, but page title/H1 should lead with clear service intent.

### Iris features

Perl confirmed all current launch Iris features are real/current:

```text
/iris/features/ai-crm/
/iris/features/ai-receptionist/
/iris/features/ai-calendar/
/iris/features/ai-sms/
/iris/features/ai-voice/
/iris/features/ai-web-chat/
/iris/features/dashboards-analytics/
/iris/features/outbound/
/iris/features/web-forms/
```

Future feature list exists separately and should not affect current launch architecture.

### Iris product URL decision

`/iris/product` should map to:

```text
/iris/features/
```

Preferred implementation: 301 redirect unless CMS/platform requires temporary canonicalization.

### Iris vertical prioritization rule

Use **My AI Front Desk ranking and traffic evidence** as the primary model for Iris vertical page prioritization.

Important nuance:

- Iris currently leans **SMB**.
- dotfun overall case studies/use cases lean more **mid-market**.
- Iris vertical pages should not over-index on mid-market positioning unless research and product fit justify it.

## Completed research / workbook artifacts

### Research base

- `research/base/research-base-v0.md`
- `workbooks/research-base/page-candidate-evidence-base-v0.csv`
- `workbooks/research-base/iris-competitor-page-taxonomy-v0.csv`
- `workbooks/research-base/ai-growth-serp-page-fetches-v0.csv`

### SEMrush research

- `research/semrush/semrush-research-pull-v0.md`
- `research/semrush/semrush-clean-relevant-organic-v0.md`
- `research/semrush/semrush-clean-relevant-organic-v0.csv`
- `research/semrush/myaifrontdesk-domain-organic-us.csv`
- `research/semrush/llms-myaifrontdesk-domain-organic-us.csv`
- `research/semrush/iris-vertical-phrase-pulls-v0/`

SEMrush key location verified without exposing the key:

- Env file: `/Users/alvin/.hermes/profiles/technical-seo/workspace/.env`
- Variable: `SEMRUSH_API`
- Smoke script: `/Users/alvin/.hermes/profiles/technical-seo/workspace/scripts/semrush-smoke.sh`

### Iris architecture scoring

- `workbooks/architecture-v0/iris-page-value-scoring-v0.csv`
- `workbooks/architecture-v0/iris-launch-architecture-v0.csv`
- `workbooks/architecture-v0/iris-page-value-scoring-v0.md`
- `workbooks/architecture-v0/iris-vertical-priority-scoring-v0.csv`
- `workbooks/architecture-v0/iris-vertical-priority-scoring-v0.md`
- `workbooks/architecture-v0/url-redirect-canonical-decisions-v0.csv`

## Current Iris recommendation

### Iris launch feature pages

```text
/iris/
/iris/features/
/iris/features/ai-crm/
/iris/features/ai-receptionist/
/iris/features/ai-calendar/
/iris/features/ai-sms/
/iris/features/ai-voice/
/iris/features/ai-web-chat/
/iris/features/dashboards-analytics/
/iris/features/outbound/
/iris/features/web-forms/
```

### Iris launch vertical pages

```text
/iris/solutions/
/iris/solutions/property-management/
/iris/solutions/home-services/
/iris/solutions/legal-services/
```

### Iris high-priority validation

```text
/iris/solutions/therapy/
```

Why: strongest non-current vertical from My AI Front Desk evidence. Needs product/proof confidence before moving to launch.

### Iris phase-two candidates

```text
/iris/solutions/medical/
/iris/solutions/small-business/
/iris/solutions/real-estate/
```

Notes:

- Medical has demand, but compliance/claims positioning needs discipline.
- Small Business may work better as a broader guide/resource than a launch solution page.
- Real Estate has demand and crawl depth, but weaker clean My AI Front Desk organic evidence in current pull.

### Iris no-page-now / monitor

```text
/iris/solutions/dental/
/iris/solutions/fitness/
/iris/solutions/retail/
/iris/solutions/med-spas/
/iris/solutions/multifamily/
/iris/solutions/restaurants/
/iris/solutions/salons/
/iris/solutions/automotive/
/iris/solutions/accounting-firms/
/iris/solutions/franchise-multi-location/
```

Nuance:

- Fold residential property management into `/iris/solutions/property-management/` for now.
- Do not create `/iris/solutions/multifamily/` yet unless Iris intentionally moves toward a more mid-market/property-enterprise branch.

## Immediate next steps

### 0. Simple + SEO sitemap workbooks — completed

Created from the Grepr sitemap example as a lighter dotfun-first version:

```text
workbooks/sitemap-v0/dotfun-simple-sitemap-v0.xlsx
workbooks/sitemap-v0/dotfun-simple-sitemap-v0.md
```

Enhanced with Grepr-style SEO fields and current dotfun research:

```text
workbooks/sitemap-v1/dotfun-seo-sitemap-v1.xlsx
workbooks/sitemap-v1/dotfun-seo-sitemap-v1.csv
workbooks/sitemap-v1/dotfun-seo-sitemap-v1.md
```

V1 added fields:

```text
Main Keyword
MSV (US)
Est. Competition
Related Keywords / Group
Questions to Answer / FAQ Seeds
SEO Source
```

SEMrush source cache:

```text
research/semrush/sitemap-v1-keyword-pulls/
```

Workbook tabs:

```text
TL Sitemap
Phase I SEO Sitemap
A Iris
B AI Solutions
C Growth Services
Keyword Source Notes
```

Current sitemap framing:

- TL sitemap at top for brevity.
- A/B/C sections represent the three business wings.
- A = Iris.
- B = AI Solutions.
- C = Growth Services.
- Run Good routes to `/ai-solutions/`.
- Deeper architecture should be merged only after the simple sitemap direction is approved.
- V1 keyword/FAQ fields are populated from SEMrush and current scoring research, but should still receive human review before copy briefs.

### 1. Review Iris vertical validation with Perl

Decision needed:

- Should `/iris/solutions/therapy/` be promoted to launch?
- Does Iris credibly support therapy / mental health / speech therapy workflows today?
- Are there proof points, example workflows, or integrations that make therapy credible?

Recommended default if uncertain: keep Therapy as launch-candidate, not launch.

### 2. AI Solutions scoring pass — completed

Created:

```text
workbooks/architecture-v0/ai-solutions-page-value-scoring-v0.csv
workbooks/architecture-v0/ai-solutions-launch-architecture-v0.csv
workbooks/architecture-v0/ai-solutions-page-value-scoring-v0.md
```

Current AI Solutions scoring result:

- Launch: 3
- Launch-candidate: 3
- Phase-two-monitor: 2
- No-page-now: 5

Recommended launch set from first pass:

```text
/ai-solutions/
/ai-solutions/solutions/custom-ai-agent-development/
/ai-solutions/solutions/ai-workflow-automation/
```

Launch-candidate set to review:

```text
/ai-solutions/solutions/ai-systems-integration/
/ai-solutions/solutions/ai-audit/
/ai-solutions/solutions/custom-iris-builds/
```

Core rule: keep AI Solutions custom/build/implementation language distinct from Iris productized SaaS language.

Open AI Solutions decision: whether `ai-systems-integration`, `ai-audit`, and `custom-iris-builds` are launch pages or should be folded into the AI Solutions hub/solution pages at launch.

### 3. Growth Services scoring pass — completed

Created:

```text
workbooks/architecture-v0/growth-services-page-value-scoring-v0.csv
workbooks/architecture-v0/growth-services-launch-architecture-v0.csv
workbooks/architecture-v0/growth-services-page-value-scoring-v0.md
```

Supporting research:

```text
research/semrush/growth-services-phrase-pulls-v0/
reference-docs/perl-growth-services-decisions-2026-06-07.md
```

Current Growth Services scoring result:

- Launch: 3
- Launch-candidate: 4
- Phase-two: 4
- Section-on-parent: 3
- Route-to-AI-Solutions: 1

Recommended Growth Services launch set:

```text
/growth-services/feel-good/digital-marketing/
/growth-services/feel-good/seo-aeo/
/growth-services/look-good/web-design/
```

Launch-candidate set to review:

```text
/growth-services/feel-good/growth-marketing/
/growth-services/feel-good/paid-media/
/growth-services/look-good/video-production/
/growth-services/look-good/web-development/
```

Phase-two / bundle-or-section set:

```text
/growth-services/feel-good/content-strategy/
/growth-services/feel-good/fractional-growth-leadership/
/growth-services/look-good/branding-design/
/growth-services/look-good/graphic-design/
/growth-services/look-good/ad-design/
/growth-services/feel-good/gtm-strategy/
/growth-services/feel-good/analytics-reporting/
```

Run Good decision:

```text
Run Good click/navigation route → /ai-solutions/
```

Do not create `/growth-services/run-good/...` child service pages at launch.

### 4. Build consolidated architecture workbook set

After scoring AI Solutions and Growth Services, create:

```text
workbooks/architecture-v0/01_keyword_domination_plan_v0.csv
workbooks/architecture-v0/02_content_architecture_v0.csv
workbooks/architecture-v0/03_url_structure_v0.csv
workbooks/architecture-v0/04_competitive_gap_execution_v0.csv
workbooks/architecture-v0/05_internal_linking_matrix_v0.csv
workbooks/architecture-v0/06_schema_coverage_matrix_v0.csv
workbooks/architecture-v0/07_launch_vs_phase_two_roadmap_v0.csv
```

## Restart instruction for future agent/session

Before continuing:

1. Load `seo-client-architecture-workspace` and/or `seo-architecture-workbooks` skill if available.
2. Read this file.
3. Read `reference-docs/perl-iris-decisions-2026-06-07.md`.
4. Read `workbooks/architecture-v0/iris-vertical-priority-scoring-v0.md`.
5. Continue from consolidated architecture workbook creation unless Perl asks to revisit Iris vertical, AI Solutions, or Growth Services launch-candidate decisions.
