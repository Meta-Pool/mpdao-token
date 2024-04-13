set -e
bash scripts/build.sh 

NETWORK=testnet
export NEAR_ENV=$NETWORK
SUFFIX=testnet

CONTRACT_ACC=mpdao-token.$SUFFIX
DECIMALS="000000"
TOTAL_SUPPLY="500000000"
OWNER=meta-pool-dao.$SUFFIX

set -x
near deploy $CONTRACT_ACC res/mpdao_token.wasm --initFunction new_default_meta --initArgs "{\"owner_id\":\"$OWNER\",\"total_supply\":\"$TOTAL_SUPPLY$DECIMALS\"}"
#near call $CONTRACT_ACC add_minter "{\"account_id\":\"$OWNER\"}" --accountId $OWNER --depositYocto 1

## redeploy code only
#near deploy $CONTRACT_ACC ./res/mpdao_token.wasm --masterAccount $MASTER_ACC

# backup last deployment (to be able to recover state)
mkdir -p res/mainnet/mpdao-token
cp res/mpdao_token.wasm res/mainnet/mpdao-token/$CONTRACT_ACC.`date +%F.%T`.wasm
date +%F.%T
