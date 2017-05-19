#!/bin/bash

set -x

rm -f index.aux index.bbl index.blg index.log index.out
rm -f addendum.aux addendum.log addendum.out
rm -f index.pdf
rm -f addendum.pdf
rm -f whitepaper.pdf

pdflatex -interaction=nonstopmode index.tex
pdflatex -interaction=nonstopmode addendum.tex

bibtex index
# Don't bibtex addendum

pdflatex -interaction=nonstopmode index.tex
pdflatex -interaction=nonstopmode addendum.tex

pdflatex -interaction=nonstopmode index.tex
pdflatex -interaction=nonstopmode addendum.tex

pdftk index.pdf addendum.pdf cat output whitepaper.pdf
