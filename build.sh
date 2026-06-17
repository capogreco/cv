#!/usr/bin/env bash
# Build curriculum_vitae.pdf with pdflatex.
# curve.cls needs two passes to resolve the layout, so we run twice.
set -euo pipefail
cd "$(dirname "$0")"

MAIN=curriculum_vitae

pdflatex -interaction=nonstopmode -halt-on-error "$MAIN.tex"
pdflatex -interaction=nonstopmode -halt-on-error "$MAIN.tex"

echo "Built $MAIN.pdf"
