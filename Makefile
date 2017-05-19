all:
	bin/build.sh

# define genpdfs
# 	pdflatex -output-directory dist -output-format pdf -interaction nonstopmode src/index.tex
# 	pdflatex -output-directory dist -output-format pdf -interaction nonstopmode src/addendum.tex
# endef
# 
# define combinepdfs
# 	pdftk index.pdf addendum.pdf cat output bigchaindb-whitepaper.pdf
# endef
# 
# all: clean bib
# 	@echo Now we will merge the Addendum with the whitepaper using pdftk.
# 	@echo If you don\'t have pdftk installed, then you will have to install it, using e.g.
# 	@echo $ sudo apt-get install pdftk
# 	$(combinepdfs)
# 
# pdf:
# 	$(genpdfs)
# 
# bib: pdf
# 	bibtex dist/index.aux
# 
# clean:
# 	rm -f dist/index.aux dist/index.bbl dist/index.blg dist/index.log dist/index.out
# 	rm -f dist/addendum.aux dist/addendum.log dist/addendum.out
# 
# clean-pdf:
# 	rm -f dist/index.pdf
# 	rm -f dist/addendum.pdf
# 	rm -f dist/bigchaindb-whitepaper.pdf
# 
# clean-all: clean clean-pdf
