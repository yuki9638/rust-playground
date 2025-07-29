# Dockerfile
FROM rust:latest

# コンテナ内の作業ディレクトリを設定
WORKDIR /app

# Rust のビルドキャッシュを効率化するため cargo 関連だけ先にコピー
COPY Cargo.toml Cargo.lock ./
RUN cargo fetch || true   # 依存関係を先に取得（あれば）

# ソースコードをコピー
COPY . .

# デフォルトコマンド（コンテナ起動時にbashに入る）
CMD ["/bin/bash"]