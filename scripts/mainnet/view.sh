export NEAR_ENV=mainnet
SUF=near
set -x
near view mpdao-token.$SUF get_owner_id
near view mpdao-token.$SUF get_minters
near view mpdao-token.$SUF ft_total_supply
near view mpdao-token.$SUF ft_metadata
