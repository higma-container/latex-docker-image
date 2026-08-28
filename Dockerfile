FROM debian:trixie-slim

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        texlive \
        texlive-latex-extra \
        texlive-fonts-recommended \
        texlive-lang-japanese \
        texlive-luatex \
        latexmk \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -m -s /bin/bash texuser
