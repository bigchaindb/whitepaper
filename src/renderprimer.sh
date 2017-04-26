#!/bin/bash

set -x

rm -f primer.aux primer.bbl primer.blg primer.log primer.out
rm -f primer.pdf

pdflatex -interaction=nonstopmode primer.tex

bibtex index

pdflatex -interaction=nonstopmode primer.tex
pdflatex -interaction=nonstopmode primer.tex
