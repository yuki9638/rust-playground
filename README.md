## Dockerの起動
$ docker run --rm -it -v $(pwd):/app rust-dev

## rustのコードのコンパイルと実行
$ cargo run        # コード実行
$ cargo test       # テスト実行
$ cargo build      # ビルドだけ

## 新しいプロジェクトを作る
$ cargo new project-name

## 依存ライブラリを入れる
$ cargo add serde

## Dockerfileを変えたときはリビルドする
$ docker build -t rust-dev .

