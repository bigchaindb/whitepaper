define genpdf
	pdflatex -interaction=nonstopmode index.tex
endef

all: clean bib
	$(genpdf)
	$(genpdf)

pdf:
	$(genpdf)

bib: pdf
	bibtex index.aux

clean:
	rm -f index.aux index.bbl index.blg index.log index.out

clean-pdf:
	rm -f index.pdf

clean-all: clean clean-pdf
