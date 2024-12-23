set -e

#!/bin/bash
__dir=$(dirname "$0")
. $__dir/0-testnet-set-vars.sh

set -x
near call $CONTRACT_ACC add_minter "{\"account_id\":\"$OWNER\"}" --accountId $OWNER --depositYocto 1
