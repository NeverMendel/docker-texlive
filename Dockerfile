FROM ubuntu:24.04

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update &&\
    apt install -f -y \
    biber \
    make \
    texlive-bibtex-extra \
    texlive-lang-all \
    texlive-latex-base \
    texlive-latex-extra

WORKDIR /usr/app

ENTRYPOINT [ "/bin/bash", "-l", "-c" ]