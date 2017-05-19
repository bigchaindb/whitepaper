#!/usr/bin/env bash

set -x

# remove artifacts
rm -f dist/

# generate pdf
cd ../src
pdflatex -output-directory dist -output-format pdf -interaction nonstopmode src/index.tex
pdflatex -output-directory dist -output-format pdf -interaction nonstopmode src/addendum.tex

# Don't bibtex addendum
bibtex dist/index.aux

# combine pdflatex output files
cd ../dist
pdftk index.pdf addendum.pdf cat output bigchaindb-whitepaper.pdf