all: clean pdf bib pdf pdf

pdf:
	pdflatex -interaction=nonstopmode index.tex

bib:
	bibtex index.aux

clean:
	rm -f index.aux index.bbl index.blg index.log index.out

clean-pdf:
	rm -f index.pdf

clean-all: clean clean-pdf
