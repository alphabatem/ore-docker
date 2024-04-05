#!/bin/bash

# Ref from: https://gist.github.com/Taylor123/073c9080b78dd18b5cde2344604d2db9

echo "Starting Ore Miner..."
echo "RPC_URL: $RPC_URL"
echo "KEYPAIR: $KEYPAIR"
echo "PRIORITY_FEE: $PRIORITY_FEE"
echo "MINER_THREADS: $MINER_THREADS"

while true
do
  echo "Running"
  ore --rpc "$RPC_URL" --keypair "$KEYPAIR" --priority-fee $PRIORITY_FEE mine --threads $MINER_THREADS
  echo "Exited"
done