FROM debian:bookworm

RUN adduser texuser --gecos "" --disabled-password \
    && apt-get update \
    && apt-get install -y locales texlive-full texlive-lang-japanese texlive-fonts-extra \
    && rm -fr /var/lib/apt/lists/* \
    && sed -i -E 's/# (ja_JP.UTF-8)/\1/' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
