#!/bin/bash

RPC_URL="your_rpc_url"
KEYPAIR_FILEPATH="path_to_your_keypair_file"
MICROLAMPORTS="your_priority_fee"
THREAD_COUNT="your_thread_count"

until bash -c "./ore \ 
--rpc "$RPC_URL" \
--keypair "$KEYPAIR_FILEPATH" \
--priority-fee "$MICROLAMPORTS" \
mine \
--threads 4"; do 
    echo "Command failed, retry"
    sleep 1
done