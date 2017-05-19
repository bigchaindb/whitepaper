FROM ubuntu

RUN apt-get update && apt-get install -y texlive texlive-latex-extra pdftk

RUN mkdir -p /usr/src/whitepaper

VOLUME /usr/src/whitepaper
WORKDIR /usr/src/whitepaper
