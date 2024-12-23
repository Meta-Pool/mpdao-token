set +ex
bash scripts/build.sh

#!/bin/bash
__dir=$(dirname "$0")
. $__dir/0-mainnet-set-vars.sh

meta-util dao propose upgrade $CONTRACT_ACC res/mpdao_token.wasm

mkdir -p res/mainnet/mpdao-token
cp res/metapool.wasm res/mainnet/mpdao-token/$CONTRACT_ACC.`date +%F.%T`.wasm
date +%F.%T
