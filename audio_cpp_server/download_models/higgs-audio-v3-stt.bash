set -euo pipefail
. /app/download_models/download.bash

download \
    "https://huggingface.co/audio-cpp/audio.cpp-gguf/resolve/main/Higgs-Audio-v3-STT-GGUF/higgs-audio-v3-stt-f16.gguf" \
    "base_models/higgs-audio-v3-stt.gguf" \
    16 &

wait

echo "All downloads finished."
