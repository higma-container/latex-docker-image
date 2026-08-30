# syntax=docker/dockerfile:1

FROM debian:trixie-slim

LABEL \
    org.opencontainers.image.title="LaTeX Development Environment" \
    org.opencontainers.image.description="LaTeX development environment with TeX Live" \
    org.opencontainers.image.source="https://github.com/higma-container/latex-docker-image"

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
