# Exercises

Most exercises in this book live **inside each chapter**, in the *Exercises*
callout near the end. They are reflection and application prompts rather than
auto-graded problems, in keeping with the book's principles-first approach.

This directory exists to:

1. **Collect standalone or supplementary exercises** contributed by the community
   (labs, discussion prompts, project briefs, rubrics).
2. **Host machine-checkable exercises** where they make sense (e.g. ones that pair
   with code in [`../examples/`](../examples/)).

## Layout

```text
exercises/
├── README.md            (this file)
└── chNN-<slug>/         (one folder per chapter that has supplementary exercises)
    ├── README.md        (the exercise prompt + learning objective tags)
    └── ...              (any starter files)
```

Solutions, when provided, go in the parallel [`../solutions/`](../solutions/)
tree so the two can be released or withheld independently.

## Contributing an exercise

1. Create `exercises/chNN-topic/README.md`.
2. State the **learning objective(s)** it targets (use the book's `LO N.M` tags),
   the **prerequisite chapters**, and the **expected time**.
3. If it has a solution, add the matching folder under `../solutions/`.
4. Open a pull request. See [CONTRIBUTING.md](../CONTRIBUTING.md).

### Exercise template

```markdown
# Exercise: <title>

- **Chapter:** N — <chapter title>
- **Learning objectives:** LO N.1, LO N.3
- **Prerequisites:** Chapters X, Y
- **Time:** ~45 min
- **Type:** reflection | analysis | build | discussion

## Scenario
...

## Tasks
1. ...
2. ...

## What good looks like
- ...
```
