# Perl Iris Decisions — 2026-06-07

These decisions update the Iris Platform architecture scoring and should be treated as source-of-truth unless superseded.

## 1. Launch feature readiness

The Iris launch feature set in `workbooks/architecture-v0/iris-launch-architecture-v0.csv` is confirmed as product-ready / currently available.

Confirmed current Iris features:

- AI CRM
- AI receptionist
- AI calendar
- AI SMS
- AI voice
- AI web chat
- dashboards / analytics
- outbound
- web forms

Per Perl: there is a separate future feature list, but it is not important for the current launch architecture.

## 2. Iris vertical / solution page prioritization

For Iris specifically, prioritize vertical/solution pages based on which My AI Front Desk pages are ranking and gaining traffic.

Positioning nuance:

- Iris currently leans SMB.
- dotfun overall case studies and use cases lean more mid-market.
- Therefore Iris vertical pages should not over-index on mid-market positioning unless the specific vertical/search intent supports it.

Research implication:

- Use SEMrush and SERP evidence from My AI Front Desk as the primary prioritization input for Iris vertical pages.
- Current dotfun proof/case studies are useful, but should not override the Iris SMB/product-led angle.

## 3. `/iris/product` decision

`/iris/product` should map to `/iris/features/`.

Architecture implication:

- `/iris/features/` is the feature overview URL.
- Current `/iris/product` should be treated as a redirect/canonicalization candidate to `/iris/features/`, not as a separate product overview page.
