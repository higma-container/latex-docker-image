# LaTexのDockerイメージ

## build

```bash
$ docker build -t yoshiyasu1111/latex:v0.4 .
```

## push

```bash
$ docker login
$ docker image push yoshiyasu1111/latex:v0.4
```

## パッケージ

- texlive … 基本 + 推奨パッケージ一式
- texlive-latex-extra … listings、xcolor、tcolorbox などコード表示系を含む
- texlive-fonts-recommended … 標準的なフォント一式
- texlive-lang-japanese … 日本語組版(upLaTeX/LuaTeX-ja)
- texlive-luatex … LuaLaTeXエンジン(日本語+コードハイライトの組み合わせで使いやすい)
- latexmkは … LaTeXのビルドを自動化するPerl製のツール
