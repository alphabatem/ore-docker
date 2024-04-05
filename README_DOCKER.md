# Ore Docker

Simple Dockerized ore.supply runner


## Build
Build the docker image

```bash
docker build . -t ore-001
```

## Run

Run the docker image
* Command mounts the current directory into the container
  * Allows for keypairs to be kept locally then mounted into the image
* Command runs `mine.sh` within the container to start mining

```bash
docker run -v .:/work -e RPC_URL="https://api.mainnet-beta.solana.com" -e KEYPAIR="id.json" -e PRIORITY_FEE=1000 -e MINER_THREADS=4 ore-001
```

## Notes
* Use a good RPC (or custom infrastructure)
* Priority fees are needed but the amount is arbitrary as Solana Scheduler is broken

## Improvements
* Cba to deal with the build gremlins with alpine but if anyone wants to chew that glass please pr <3
* Can probably run many miners within a single container for optimal resource use - needs benchmarking