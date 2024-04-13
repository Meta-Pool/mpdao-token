#!/bin/bash
set -e

cargo build --target wasm32-unknown-unknown --release
mkdir -p res
cp -u target/wasm32-unknown-unknown/release/mpdao_token.wasm res/
