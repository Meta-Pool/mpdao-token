set -e

NETWORK=testnet
export NEAR_ENV=$NETWORK
SUFFIX=testnet

CONTRACT_ACC=mpdao-token.$SUFFIX
OWNER=meta-pool-dao.$SUFFIX

set -x
near call $CONTRACT_ACC add_minter "{\"account_id\":\"$OWNER\"}" --accountId $OWNER --depositYocto 1
