define genpdf
	pdflatex -interaction=nonstopmode index.tex
	pdflatex -interaction=nonstopmode addendum.tex
endef

all: clean bib
	$(genpdf)
	$(genpdf)
	@echo Now we will merge the Addendum with the whitepaper using pdftk.
	@echo If you don\'t have pdftk installed, then you will have to install it, using e.g.
	@echo sudo apt-get install pdftk
	pdftk addendum.pdf index.pdf cat output whitepaper.pdf

pdf:
	$(genpdf)

bib: pdf
	bibtex index.aux

clean:
	rm -f index.aux index.bbl index.blg index.log index.out
	rm -f addendum.aux addendum.log addendum.out

clean-pdf:
	rm -f index.pdf
	rm -f addendum.pdf
	rm -f whitepaper.pdf

clean-all: clean clean-pdf
