#!/usr/bin/env bash
set -euo pipefail

MODEL_PATH="/app/models/base_models/omnivoice-bf16.gguf"
DOWNLOAD_SCRIPT="/app/download_models/omnivoice.bash"

if [ ! -f "$MODEL_PATH" ]; then
    echo "Model not found at $MODEL_PATH, downloading..."
    bash "$DOWNLOAD_SCRIPT"

    # Verify the download actually produced the file
    if [ ! -f "$MODEL_PATH" ]; then
        echo "ERROR: download finished but $MODEL_PATH still missing" >&2
        exit 1
    fi
fi

exec /src/audiocpp_server \
    --config /app/configs/omnivoice_stream.json \
    --log --log-file server_out.log
