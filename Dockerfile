FROM ubuntu

RUN apt-get update && apt-get install -y texlive texlive-latex-extra pdftk make

RUN mkdir -p /usr/src/docs

VOLUME /usr/src/docs
WORKDIR /usr/src/docs
