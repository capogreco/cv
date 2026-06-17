MAIN = curriculum_vitae
SRC  = $(MAIN).tex
DEPS = curve.cls qualifications.tex awards.tex teaching.tex creative_work.tex

# Build artefacts that aren't the PDF (safe to delete on `make clean`)
JUNK = $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).fls $(MAIN).fdb_latexmk

.PHONY: all clean view

all: $(MAIN).pdf

# curve.cls needs two passes to resolve the layout, so run pdflatex twice.
$(MAIN).pdf: $(SRC) $(DEPS)
	pdflatex -interaction=nonstopmode -halt-on-error $(SRC)
	pdflatex -interaction=nonstopmode -halt-on-error $(SRC)

view: $(MAIN).pdf
	open $(MAIN).pdf

clean:
	rm -f $(JUNK)
