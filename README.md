# harbor-parse-dsl-stack

`harbor-parse-dsl-stack` is a compact Ruby repository for parsers, centered on this goal: Implement a Ruby parsers project for dsl constraint solving, using bounded scenario files and conflict explanations.

## Why It Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Harbor Parse Dsl Stack Review Notes

The first comparison I would make is `error locality` against `label quality` because it shows where the rule is most opinionated.

## Features

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/harbor-parse-dsl-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `error locality` and `label quality`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Ruby addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Limitations And Roadmap

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
