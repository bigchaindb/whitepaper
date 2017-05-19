#!/usr/bin/env bash

FILENAME='bigchaindb-whitepaper.pdf'

set -x

# remove artifacts
rm -f $FILENAME

# Either of those would be sooooo great, and would replace this whole file
#pandoc -o $FILENAME src/index.tex
#rubber --pdf --into=dist --texpath=img src/index.tex

# generate pdf
cd src/
pdflatex -interaction=nonstopmode index.tex
pdflatex -interaction=nonstopmode addendum.tex

bibtex index.aux # Don't bibtex addendum

pdflatex -interaction=nonstopmode index.tex
pdflatex -interaction=nonstopmode addendum.tex

# needs to be run again to finally make footnotes & bibliography work
pdflatex -interaction=nonstopmode index.tex
pdflatex -interaction=nonstopmode addendum.tex

# combine pdflatex output files
pdftk index.pdf addendum.pdf cat output $FILENAME

mv bigchaindb-whitepaper.pdf ../$FILENAME

# clean up after ourselves
rm -f *.aux *.bbl *.blg *.out *.pdf *.log

echo "PDF successfully generated. Whoop whoop."

exit