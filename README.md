# Curriculum Vitae

LaTeX source for Thomas Capogreco's CV, built with the [`curve`](https://github.com/opieters/curriculum-vitae) document class (`curve.cls`, included).

## Building

Requires a TeX distribution that provides `pdflatex` (e.g. [MacTeX](https://www.tug.org/mactex/) / TeX Live).

Easiest:

```bash
make          # builds curriculum_vitae.pdf
make view     # builds, then opens the PDF (macOS)
make clean    # removes .aux/.log/etc. (keeps the PDF)
```

Or, without `make`:

```bash
./build.sh
```

Both run `pdflatex` **twice** — `curve.cls` needs two passes to resolve the
layout (cross-references, rubric alignment), so a single pass produces a
mis-laid-out PDF.

## Files

| File | Purpose |
|------|---------|
| `curriculum_vitae.tex` | Main document — headers, title, and the list of rubrics to include |
| `curve.cls`            | The CV document class |
| `qualifications.tex`   | Qualifications rubric |
| `awards.tex`           | Awards rubric |
| `teaching.tex`         | Teaching rubric |
| `creative_work.tex`    | Creative work rubric |

Each rubric is pulled in from `curriculum_vitae.tex` via `\makerubric{...}`.
To add or reorder sections, edit the `\makerubric` lines there.
