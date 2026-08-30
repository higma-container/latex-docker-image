# LaTex Docker Image

LaTex がインストールされた Debian ベースの Docker イメージです。

LaTex を利用する CI やビルド環境などで使用できます。

## パッケージ

- texlive … 基本 + 推奨パッケージ一式
- texlive-latex-extra … listings、xcolor、tcolorbox などコード表示系を含む
- texlive-fonts-recommended … 標準的なフォント一式
- texlive-lang-japanese … 日本語組版(upLaTeX/LuaTeX-ja)
- texlive-luatex … LuaLaTeXエンジン(日本語+コードハイライトの組み合わせで使いやすい)
- latexmkは … LaTeXのビルドを自動化するPerl製のツール
