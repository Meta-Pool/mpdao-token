export NEAR_ENV=mainnet

#!/bin/bash
__dir=$(dirname "$0")
. $__dir/0-mainnet-set-vars.sh

set -x
near --quiet view $CONTRACT_ACC get_owner_id
near --quiet view $CONTRACT_ACC get_minters
near --quiet view $CONTRACT_ACC ft_total_supply
near --quiet view $CONTRACT_ACC ft_metadata
