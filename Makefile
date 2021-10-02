PANDOC := pandoc --filter pandoc-crossref  \
	-M "crossrefYaml=./src/pandoc-crossref-config.yml" \
	--citeproc --bibliography=./src/ref.bib --natbib \

LATEX_FILE := template

MDS := $(wildcard src/*.md)
TEXS := $(MDS:.md=.tex)


PHONY: latexmk

all:latexmk

# type rule

src/%.tex:src/%.md
	$(PANDOC) $< -o $@

latexmk:$(TEXS) src/ref.bib
	latexmk -f  -cd src/$(LATEX_FILE).tex

clean:
	latexmk -cd -C src/$(LATEX_FILE).tex