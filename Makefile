LATEX_FILE := template

PHONY: latexmk

all:latexmk

md:src/main.md 
	pandoc --filter pandoc-crossref  \
	-M "crossrefYaml=./src/pandoc-crossref-config.yml" \
	--top-level-division=chapter \
	--citeproc --bibliography=./src/ref.bib --natbib \
	./src/main.md -o ./src/main.tex

latexmk:md src/ref.bib
	latexmk -f  -cd src/$(LATEX_FILE).tex

clean:
	latexmk -cd -C src/$(LATEX_FILE).tex