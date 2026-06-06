# Solutions

> **Status: planned / not yet included.** The textbook's *Exercises* callouts say
> *"Solutions appear in the companion solutions volume."* That companion volume was
> **not part of the v1.0 source handed to this repository** (see the
> [Phase 1 audit](../archive/editorial-history/)). This directory is its
> reserved home.

This is a **documented gap**, tracked on the [Roadmap](../ROADMAP.md) and via a
`help wanted` issue. There are two ways it gets filled:

1. The authors contribute the existing solutions volume (preferred), or
2. The community writes solutions exercise-by-exercise as pull requests.

## Layout (when populated)

```text
solutions/
├── README.md
└── chNN-<slug>/
    └── README.md     (worked solution, mirroring exercises/chNN-<slug>/)
```

Keep each solution in the folder that mirrors its exercise in
[`../exercises/`](../exercises/). This lets maintainers release or withhold
solutions independently of the exercises (useful for graded coursework).

## A note for educators

If you adopt this book for a graded course and would prefer solutions **not** be
public, open a discussion — we can keep an instructor-only solutions channel
rather than committing answers here. See the
[educator guide](../website/docs/adopt/educators.md).
