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