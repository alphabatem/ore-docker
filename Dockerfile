FROM rust:1.75

RUN sh -c "$(curl -sSfL https://release.solana.com/v1.18.4/install)" && cargo install ore-cli

ENV RPC_URL https://api.mainnet-beta.solana.com
ENV KEYPAIR id.json
ENV PRIORITY_FEE 1000
ENV MINER_THREADS 4

WORKDIR /work

COPY mine.sh .

ENTRYPOINT ["./mine.sh"]