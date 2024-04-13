NEAR_ENV=testnet
set -x
near view mpdao-token.testnet get_owner_id
near view mpdao-token.testnet get_minters
near view mpdao-token.testnet ft_total_supply
near view mpdao-token.testnet ft_metadata
