export NEAR_ENV=mainnet

#!/bin/bash
__dir=$(dirname "$0")
. $__dir/0-mainnet-set-vars.sh

set -x
near view $CONTRACT_ACC get_owner_id
near view $CONTRACT_ACC get_minters
near view $CONTRACT_ACC ft_total_supply
near view $CONTRACT_ACC ft_metadata
