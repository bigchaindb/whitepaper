#!/usr/bin/env bash

set -x

# remove artifacts
rm -f dist/*

# generate pdf
pdflatex -output-directory=dist -output-format=pdf -interaction=nonstopmode src/index.tex
pdflatex -output-directory=dist -output-format=pdf -interaction=nonstopmode src/addendum.tex

bibtex dist/index.aux # Don't bibtex addendum

# combine pdflatex output files
pdftk dist/index.pdf dist/addendum.pdf cat output dist/bigchaindb-whitepaper.pdf