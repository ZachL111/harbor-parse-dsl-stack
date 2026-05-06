# Review Journal

The review surface for `harbor-parse-dsl-stack` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 215, lane `ship`
- `stress`: `grammar width`, score 159, lane `ship`
- `edge`: `label quality`, score 156, lane `ship`
- `recovery`: `error locality`, score 230, lane `ship`
- `stale`: `token drift`, score 209, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
