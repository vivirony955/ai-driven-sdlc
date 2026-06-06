# Code examples

Runnable code that accompanies the book. The textbook is deliberately
**principles-first and vendor-neutral**, so it uses short, illustrative snippets
rather than a single large codebase. This directory is where those snippets — and
community-contributed, fuller worked examples — live as files you can actually
run.

> **License:** everything in this directory is [**MIT**](../LICENSE-CODE), not
> CC BY. Code is meant to be copied into your own projects without attribution
> friction.

## Layout

```text
examples/
├── README.md
└── chNN-<slug>/
    ├── README.md       (what it shows, which section, how to run)
    └── ...             (source files)
```

Tie each example to the chapter and concept it illustrates, and keep it minimal —
the goal is to make one idea concrete, not to ship a framework.

## Contributing an example

1. Create `examples/chNN-topic/` with a `README.md` that states the chapter, the
   concept, the language/runtime, and a one-command way to run it.
2. Keep dependencies minimal and pinned; prefer the standard library.
3. Make sure it runs on a clean machine (CI may execute language-appropriate
   examples).
4. Open a pull request. See [CONTRIBUTING.md](../CONTRIBUTING.md).

### Example `README.md` template

```markdown
# Example: <title>

- **Chapter:** N — <concept>
- **Language/runtime:** Python 3.11+
- **Run:** `python main.py`

## What this demonstrates
...
```
