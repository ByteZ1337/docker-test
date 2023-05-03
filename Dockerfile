FROM rust:latest

RUN apt update && apt upgrade -y

# Windows
RUN apt install -y g++-mingw-w64-x86-64
RUN rustup target add x86_64-pc-windows-gnu
RUN rustup toolchain install stable-x86_64-pc-windows-gnu

# Linux x86_64
RUN apt install -y gcc-multilib
RUN rustup target add x86_64-unknown-linux-gnu
RUN rustup toolchain install stable-x86_64-unknown-linux-gnu

# Linux ARM
RUN apt install -y g++-aarch64-linux-gnu libc6-dev-arm64-cross
RUN rustup target add aarch64-unknown-linux-gnu
RUN rustup toolchain install stable-aarch64-unknown-linux-gnu

WORKDIR /app