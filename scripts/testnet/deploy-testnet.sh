set -e
bash scripts/build.sh

#!/bin/bash
__dir=$(dirname "$0")
. $__dir/0-testnet-set-vars.sh

set -x
near deploy $CONTRACT_ACC res/mpdao_token.wasm --initFunction new_default_meta --initArgs "{\"owner_id\":\"$OWNER\",\"total_supply\":\"$TOTAL_SUPPLY$DECIMALS\"}"
#near call $CONTRACT_ACC add_minter "{\"account_id\":\"$OWNER\"}" --accountId $OWNER --depositYocto 1

## redeploy code only
#near deploy $CONTRACT_ACC ./res/mpdao_token.wasm --masterAccount $MASTER_ACC

# backup last deployment (to be able to recover state)
mkdir -p res/mainnet/mpdao-token
cp res/mpdao_token.wasm res/mainnet/mpdao-token/$CONTRACT_ACC.`date +%F.%T`.wasm
date +%F.%T
