#!/bin/sh

curl https://sh.rustup.rs -sSf | sh
rustup component add rust-src
rustup default nightly
rustup update
cargo install cargo-edit
