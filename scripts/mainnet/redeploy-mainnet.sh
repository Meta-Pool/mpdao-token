#!/bin/bash
__dir=$(dirname "$0")
. $__dir/0-mainnet-set-vars.sh

## redeploy code only
near deploy $CONTRACT_ACC ./res/mpdao_token.wasm

# backup last deployment (to be able to recover state)
mkdir -p res/mainnet/mpdao-token
cp res/mpdao_token.wasm res/mainnet/mpdao-token/$CONTRACT_ACC.`date +%F.%T`.wasm
date +%F.%T
