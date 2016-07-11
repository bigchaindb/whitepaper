# BigchainDB Whitepaper

This repository contains the source (LaTeX) for the BigchainDB whitepaper.

If you're looking for the main BigchainDB repository, it's at [bigchaindb/bigchaindb](https://github.com/bigchaindb/bigchaindb).

## Using Make to Generate the PDF

There's a very simple [Makefile](src/Makefile) under the `src` directory. To generate the PDF (whitepaper.pdf):

```bash
$ cd src
$ make all
```

The [Makefile](src/Makefile) has a few targets. To clean intermediate files:

```bash
$ make clean
```

## Using Docker to generate the PDF

If you don't wish to bother with installing `pdflatex` and `bibtex`, and feel comfortable with using `docker` and `docker-compose`, then

```bash
$ docker-compose up
```

will generate the PDF.

For specific `make` targets, such as `make clean`, do:

```bash
$ docker-compose run --rm docs make clean
```
