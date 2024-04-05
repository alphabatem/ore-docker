

```bash
docker build . -t ore-001
docker run -it ore-001

docker run -v .:/work -e RPC_URL="https://api.mainnet-beta.solana.com" -e KEYPAIR="id.json" -e PRIORITY_FEE=1000 -e MINER_THREADS=4 ore-001

#Mount the current FS so we cant build from there
docker run -it ore-001
```