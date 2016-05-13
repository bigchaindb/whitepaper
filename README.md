# whitepaper
BigchainDB: A Scalable Blockchain Database.

To compile this into a PDF, you need at least `pdflatex` and `bibtex`. The `LaTeX` suite can be a bit tricky to install: if you're new to `LaTeX`, start [here](https://latex-project.org/ftp.html).

After cloning this repository, navigate to the `src` subdirectory and run these commands in order:

```bash
pdflatex -interaction=nonstopmode index.tex
bibtex index.aux
pdflatex -interaction=nonstopmode index.tex
pdflatex -interaction=nonstopmode index.tex
```

Yes, you really have to run `pdflatex` three times.  This is a quirk of the `TeX` build system. At this point, you should have an `index.pdf`, which is the up-to-date whitepaper.

#### Using the `Makefile` to generate the PDF
There's a very simple [Makefile](src/Makefile) under the `src` directory.

To generate the PDF:

```bash
$ make
```

The [Makefile](src/Makefile) has a few targets, e.g., to clean intermediate
files:

```bash
$ make clean
rm -f index.aux index.bbl index.blg index.log index.out
```

#### Using `docker` to generate the PDF
If you don't wish to bother with installing `pdflatex` and `bibtex`, and feel
comfortable with using `docker` and `docker-compose, then

```bash
$ docker-compose up
```

will generate the PDF.

For specific `make` targets, e.g.: `make clean`:

```bash
$ docker-compose run --rm docs make clean-all
rm -f index.aux index.bbl index.blg index.log index.out
rm -f index.pdf
```
