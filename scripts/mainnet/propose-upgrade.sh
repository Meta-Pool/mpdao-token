set +ex
bash scripts/build.sh 

CONTRACT_ACC=mpdao-token.near
meta-util dao propose upgrade $CONTRACT_ACC res/mpdao_token.wasm
mkdir -p res/mainnet/mpdao-token
cp res/metapool.wasm res/mainnet/mpdao-token/$CONTRACT_ACC.`date +%F.%T`.wasm
date +%F.%T
