#!/bin/bash
set -e
if [ "$#" -ne 1 ] || { [ "$1" != "reproducible" ] && [ "$1" != "non-reproducible" ]; }; then
  echo "Usage: $0 [reproducible|non-reproducible]"
  exit 1
fi

# ...existing code...
cargo near build $1-wasm
mkdir -p res
cp -u target/near/mpdao_token.wasm res/
cp -u target/near/mpdao_token_abi.json res/
