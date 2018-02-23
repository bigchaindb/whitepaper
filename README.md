# BigchainDB Whitepaper

![repo banner](media/repo-banner@2x.png)

This repository contains the source (LaTeX) for the original BigchainDB whitepaper, which was first published in February of 2016.

If you're looking for the main BigchainDB repository, it's at [bigchaindb/bigchaindb](https://github.com/bigchaindb/bigchaindb).

And if you're really here to get a glimpse of the exciting world of LaTeX-based file generation, this repo is for you.

## Using Docker

Using Docker in conjunction with Docker Compose is the recommended way so you don't have to bother with installing `pdflatex`, `bibtex` and a whole lot more LaTeX-related packages, which is especially cumbersome on macOS & Windows.

In root of this repository, simply execute:

```bash
docker-compose up
```

This will output the final PDFs to `./bigchaindb-whitepaper.pdf` & `./bigchaindb-primer.pdf`.

## Generating the PDF without Docker

Build requires two binaries:

- `pdflatex`
- `bibtex`

### Linux

On Linux, both binaries come as part of most LaTeX packages, we use `Texlive`:

```bash
sudo apt-get install -y texlive texlive-latex-extra texlive-fonts-extra pdftk
```

### macOS

On macOS you can get both binaries as part of the BasicTex package, which can be installed manually via [their package installer](http://www.tug.org/mactex/morepackages.html) or via Homebrew cask:

```bash
brew cask install basictex
```

Now you have a whole bunch of binaries in a rather weird location. You can either symlink the required binaries to one of your `PATH`s, e.g. `/usr/local/bin`:

```bash
# create symlink for pdflatex binary in .app package
ln -s /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/pdflatex /usr/local/bin/pdflatex
# create symlink for bibtex binary in .app package
ln -s /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/bibtex /usr/local/bin/bibtex
```

Or get all the Tex tools by adding the whole folder to your `PATH` first:

```bash
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
```

## Generate the PDF

Finally, to generate the PDF in `./bigchaindb-whitepaper.pdf`:

```bash
./build.sh
```

## License

This work is licensed under a [Creative Commons Attribution 4.0 International license](https://creativecommons.org/licenses/by/4.0/).
