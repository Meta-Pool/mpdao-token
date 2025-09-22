#!/bin/bash
__dir=$(dirname "$0")
. $__dir/0-mainnet-set-vars.sh

## delete acc
#echo "Delete $CONTRACT_ACC? are you sure? Ctrl-C to cancel"
#read input
#near delete $CONTRACT_ACC $MASTER_ACC
#near create-account $CONTRACT_ACC --masterAccount $MASTER_ACC
near deploy $CONTRACT_ACC res/mpdao_token.wasm \
 --initFunction new_default_meta --initArgs "{\"owner_id\":\"$OWNER\",\"total_supply\":\"$TOTAL_SUPPLY$DECIMALS\"}"
#near call $CONTRACT_ACC add_minter "{\"account_id\":\"$OWNER\"}" --accountId $OWNER --depositYocto 1

# backup last deployment (to be able to recover state)
mkdir -p res/mainnet/mpdao-token
cp res/mpdao_token.wasm res/mainnet/mpdao-token/$CONTRACT_ACC.`date +%F.%T`.wasm
date +%F.%T
