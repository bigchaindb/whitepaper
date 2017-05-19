# BigchainDB Whitepaper

![repo banner](media/repo-banner@2x.png)

This repository contains the source (LaTeX) for the BigchainDB whitepaper.

---

**The most recent PDF version of the whitepaper can always be retrieved from [bigchaindb.com/whitepaper](https://www.bigchaindb.com/whitepaper)**

---

If you're looking for the main BigchainDB repository, it's at [bigchaindb/bigchaindb](https://github.com/bigchaindb/bigchaindb).

And if you're really here to get a glimpse of the exciting world of LaTeX-based file generation, this repo is for you. 

## Prerequisites for generating the PDF

Build uses two binaries:

- `bibtex`
- `pdflatex`

## Installation instructions

### Linux

```bash
sudo apt-get install -y texlive texlive-latex-extra pdftk
```

### macOS

On macOS you can get both binaries as part of the BasicTex package which you can install via Homebrew cask:

```bash
brew cask install basictex
```

After that you have a whole bunch of binaries in a rather weird location. You can either symlink the required binaries to one of your `PATH`s, e.g. `/usr/local/bin`:

```bash
# create symlink for pdflatex binary in .app package
ln -s /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/pdflatex /usr/local/bin/pdflatex
# create symlink for bibtext binary in .app package
ln -s /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/bibtext /usr/local/bin/bibtext
```

Or get all the Tex tools by adding the whole folder to your `PATH` first:

```bash
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
```

## Generate the PDF

There's a very simple [Makefile](Makefile). To generate the PDF (bigchaindb-whitepaper.pdf):

```bash
make all
```

## Using the bash scripts

```bash
cd bin
./renderpaper.sh
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
