# Perl Growth Services Decisions — 2026-06-07

These decisions update the dotfun Growth Services architecture and should be treated as source-of-truth unless superseded.

## 1. Growth Services URL pattern

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

Rule: use branded pillar paths for architecture/story continuity, but make service slugs, title tags, H1s, breadcrumbs, and intro copy clear for search/buyer intent.

## 2. Run Good routing decision

Perl confirmed that **Run Good should not be built as a standalone Growth Services service branch for launch**.

When a user clicks Run Good, route them into the **dotfun AI Solutions architecture** for simplicity.

Recommended implementation options:

1. Use Run Good as a navigation/positioning card on `/growth-services/` that links directly to `/ai-solutions/`.
2. If a URL is required for UX/CMS reasons, use a lightweight bridge page at `/growth-services/run-good/` with canonical/CTA routing to `/ai-solutions/`, but do not create child service pages under Run Good at launch.

Architecture implication:

- `Feel Good` owns marketing/growth services.
- `Look Good` owns design/creative/web services.
- `Run Good` routes to AI Solutions instead of creating duplicate automation/operations service pages.

Cannibalization guardrail:

- Automation, AI implementation, custom workflows, and AI systems language should belong to `/ai-solutions/`, not `/growth-services/run-good/...`.
