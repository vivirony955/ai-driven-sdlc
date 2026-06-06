# Educator guide

A practical guide to teaching from *An AI-Driven Software Development System* in a
school, college, university, or professional-training setting.

> **License for teaching.** The book, slides, figures, and test bank are
> [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/): you may use, adapt,
> remix, and redistribute them — including in paid courses — **with attribution**.
> Code examples are [MIT](https://opensource.org/license/mit). See
> [How to attribute](../../../README.md#how-to-attribute).

## What you get

| Asset | Use in class |
|---|---|
| **Textbook** (25 ch + 6 bridges + 3 appendices) | Core reading; principles-first |
| **33 slide decks** | Lecture directly or adapt; one per chapter/bridge/appendix |
| **Test bank** | Quizzes & exams — MC, short-answer, essay, with keys and **LO tags** |
| **In-chapter exercises** | Discussion, labs, reflection |
| **Figures** | Reuse in your own slides/handouts |
| **Atlas Learn appendices** | Ready-made case-study sessions |

Everything is cross-referenced by **learning objective** (e.g. `LO 7.2`), so you
can align lectures, readings, and assessment to the same outcomes.

## How the pieces line up

For each chapter `N`:

1. **Assign** the chapter reading (and any prerequisite bridge).
2. **Lecture** from `slides/chN.pptx`.
3. **Discuss** using the chapter's *Exercises* callout.
4. **Assess** with `test-bank` items tagged to that chapter's `LO N.*`.

The book is built so a careful **linear** read works, but it's modular after the
first pass — pull the chapters that fit your course.

## Suggested syllabi

### A) One-semester undergraduate course (14 weeks, ~3 credits)

*"Software Engineering with AI Agents."* Assumes basic programming.

| Week | Topic | Chapters | Assessment |
|---|---|---|---|
| 1 | On-ramp & motivation | 0, 1 | — |
| 2 | Mental models | 2 | Quiz 1 (Ch 1–2) |
| 3 | Requirements + federation | Bridge: RE, 3 | — |
| 4 | Architecture | 4, Bridge: Architecture | Quiz 2 |
| 5 | Context & token economics | 5, 6 | — |
| 6 | Governance & prompting | 7, 8 | Midterm (Ch 0–6) |
| 7 | The tracker + data eng. | 9, Bridge: Data | Lab: design a tracker |
| 8 | The agents | 10, 11 | — |
| 9 | Anti-patterns | 12 | Quiz 3 |
| 10 | Quality & security | 13, 14 | Lab: threat model |
| 11 | Performance & observability | 15, 16 | — |
| 12 | Operating: failure, cost | 17, 18 | Quiz 4 |
| 13 | Maturity, planning, domains | 19, Bridge: Planning, 20 | Case study (Appendix A/B/C) |
| 14 | Frontier, ethics, principles | 21, 22, Bridge: Ethics, 23 | Final / project |

### B) Graduate seminar (10 weeks, discussion-led)

Read the full book; each week one student leads. Anchor sessions on the **bridges**
and **appendices** as case material; assess with essay questions from the test bank
and a term project that applies the framework to a system of the student's choice.

### C) Professional workshop (2 days)

- **Day 1:** Parts I–II (foundations + operating disciplines) — 1–9 + RE/Arch
  bridges, lecturing from the slides.
- **Day 2:** Parts III–V (agents, quality, operating) + an Atlas Learn case-study
  clinic (Appendix A or B). Skip the exercises you can't fit; assign them as
  follow-up.

### D) Self-paced module / flipped classroom

Use the [reader paths](../../../book/README.md#reader-paths): students read at home,
class time is exercises and the Atlas Learn cases.

## Building assessments from the test bank

- Each item is tagged with the learning objective it tests; balance your exam
  across the LOs you actually taught.
- Mix **MC** (breadth) with **short-answer/essay** (depth).
- ⚠️ The public test bank **includes answer keys** — for exam security, assemble a
  private subset and don't post it publicly. If you want an instructor-only
  channel, open a discussion (see [solutions note](../../../solutions/README.md)).

## Accessibility in your course

Some figures still need alt-text (see [ACCESSIBILITY.md](../../../ACCESSIBILITY.md)).
If you teach students who use screen readers, the **EPUB/HTML** editions are
reflowable; consider assigning alt-text contribution as a class activity — it's a
real open-source contribution and a teachable moment.

## Tell us you're using it

Adopting the book for a course? Open a
[discussion](https://github.com/vivirony955/ai-driven-sdlc/discussions) — it helps
prioritize the roadmap (e.g. the [solutions volume](../../../ROADMAP.md)) and lets
us list adopting institutions (with your permission).
