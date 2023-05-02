FROM rust:latest

RUN apt update && apt upgrade -y

RUN echo "Installing Windows linker"

# Windows
RUN apt install -y g++-mingw-w64-x86-64
RUN rustup target add x86_64-pc-windows-gnu
RUN rustup toolchain install stable-x86_64-pc-windows-gnu

RUN echo "Installing Linux linker"

# Linux
RUN apt install -y gcc-multilib
RUN rustup target add x86_64-unknown-linux-gnu
RUN rustup toolchain install stable-x86_64-unknown-linux-gnu

WORKDIR /app