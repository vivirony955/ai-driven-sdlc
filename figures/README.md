# Figures

The **22 figures** from the textbook, extracted as standalone PNGs so they can be
referenced, reused, and made accessible independently of the manuscript.

- [`FIGURES.md`](FIGURES.md) — the **figure registry**: maps each file to its
  in-text caption and an alt-text slot.
- `figure-01.png` … `figure-22.png` — the images, numbered in document order.

Regenerate everything from the manuscript with:

```bash
python scripts/extract_figures.py
```

## Accessibility — help wanted

The source manuscript shipped with **no alt-text** on its figures. Adding
accessible descriptions to [`FIGURES.md`](FIGURES.md) is the single easiest and
most valuable first contribution to this project — see
[ACCESSIBILITY.md](../ACCESSIBILITY.md) for what makes a good description and how
to submit one.

## Reuse & license

Figures are [CC BY 4.0](../LICENSE). Reuse them in slides, papers, or derivative
works with attribution to the book (see the
[README](../README.md#how-to-attribute)).
