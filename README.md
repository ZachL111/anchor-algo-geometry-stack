# anchor-algo-geometry-stack

`anchor-algo-geometry-stack` is a compact OCaml repository for algorithms, centered on this goal: Package an OCaml local lab for geometry analysis with transition tables, invalid-transition tests, and documented operating limits.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how input width and boundary pressure should influence a review result.

## Anchor Algo Geometry Stack Review Notes

For a quick review, compare `boundary pressure` with `input width` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/anchor-algo-geometry-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `boundary pressure` and `input width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `input width`, `search depth`, `boundary pressure`, and `complexity`.

The added OCaml path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `edge` is the high score at 186; `baseline` is the low score at 91.

## Future Work

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
