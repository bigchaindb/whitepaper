# BigchainDB Whitepaper

This repository contains the source (LaTeX) for the BigchainDB whitepaper.

If you're looking for the main BigchainDB repository, it's at [bigchaindb/bigchaindb](https://github.com/bigchaindb/bigchaindb).


## Prerequisites for Using Bash Script or Make

1. [TeX Live](https://www.tug.org/texlive/) or similar
2. pdftk (can be installed using `apt-get install pdftk`)


## Using the Bash Script to Generate the PDF

```text
$ cd src
$ ./renderpaper.sh
```

## Using Make to Generate the PDF

There's a very simple [Makefile](src/Makefile) under the `src` directory. To generate the PDF (whitepaper.pdf):

```text
$ cd src
$ make all
```

The [Makefile](src/Makefile) has a few targets. To clean intermediate files:

```text
$ make clean
```

## Using Docker to Generate the PDF

If you don't wish to bother with installing `pdflatex` and `bibtex`, and feel comfortable with using `docker` and `docker-compose`, then

```text
$ docker-compose up
```

will generate the PDF.

For specific `make` targets, such as `make clean`, do:

```text
$ docker-compose run --rm docs make clean
```
