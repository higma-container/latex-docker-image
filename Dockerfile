FROM debian:bookworm

RUN adduser texuser --gecos "" --disabled-password \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y texlive-full texlive-lang-japanese texlive-fonts-extra pip python3-full python3-pygments \
    && rm -fr /var/lib/apt/lists/*
