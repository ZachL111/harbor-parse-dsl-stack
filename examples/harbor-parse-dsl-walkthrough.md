# Harbor Parse Dsl Stack Walkthrough

This note is the quickest way to read the extra review model in `harbor-parse-dsl-stack`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 215 | ship |
| stress | grammar width | 159 | ship |
| edge | label quality | 156 | ship |
| recovery | error locality | 230 | ship |
| stale | token drift | 209 | ship |

Start with `recovery` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
