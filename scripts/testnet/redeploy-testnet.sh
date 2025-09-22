#!/bin/bash
__dir=$(dirname "$0")
. $__dir/0-testnet-set-vars.sh

set -x
echo redeploy code only
near deploy $CONTRACT_ACC ./res/mpdao_token.wasm
