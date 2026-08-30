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

## Supported Platforms

以下のプラットフォームに対応しています。

* `linux/amd64`
* `linux/arm64`

Docker が実行環境に応じて適切なイメージを自動的に選択します。

## Usage

### Pull

最新バージョンを取得する場合：

```sh
docker pull ghcr.io/higma-container/latex:latest
```

バージョンを指定する場合：

```sh
docker pull ghcr.io/higma-container/latex:v0.8
```

### Check Versions

LaTeX：

```sh
docker run --rm \
  ghcr.io/higma-container/latex:latest \
  latex --version
```

## CI / Release

GitHub Actions を使用して Docker イメージをビルドしています。

`main` ブランチへの push および Pull Request では、以下のテストを実行します。

* `linux/amd64` のビルド
* `linux/arm64` のビルド
* latex の起動確認

GitHub Release を発行すると、`linux/amd64` と `linux/arm64` のイメージをビルドし、GHCRへpushします。

リリース時には Multi-platform manifest が作成されるため、利用者はアーキテクチャを意識せずにイメージを取得できます。

例えば `v0.8` をリリースした場合：

```sh
docker pull ghcr.io/higma-container/latex:v0.8
```

または：

```sh
docker pull ghcr.io/higma-container/latex:latest
```

## Repository

* GitHub: `higma-container/latex-docker-image`
* Container Registry: `ghcr.io/higma-container/latex`
