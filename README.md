## Dockerの起動
$ docker-compose run --rm rust-dev
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

## ファイルをコンパイルして実行(cargoを使わない)
$ rustc main.rs
$ ./main

## cargoとは
cargoはコードのビルド、依存するライブラリのダウンロード、ライブラリのビルドをしてくれる

$ cargo new を使ってプロジェクトを作成できる
$ cargo build を使ってプロジェクトをビルドできる
$ cargo run を使うとプロジェクトのビルドと実行を1ステップで行える
$ cargo check を使うとバイナリを生成せずにプロジェクトをビルドして、エラーがないか確認できる

Cargoは、ビルドの成果物をコードと同じディレクトリに保存するのではなく、target/debugディレクトリに格納する

Cargoを使えばどのOSで作業していてもコマンドが同じになる
$ cargo build --release を使えばプロジェクトを最終的にリリースするときに最適化もすることができる。

[workspace]の配下でcargo newを使って新しくcargoプロジェクトを作ると、勝手にワークスペースにパスを追加してくれる！！

