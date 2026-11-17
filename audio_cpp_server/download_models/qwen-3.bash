set -euo pipefail
. /app/download_models/download.bash

# download \
#     "https://huggingface.co/audio-cpp/audio.cpp-gguf/resolve/main/Qwen3-TTS-12Hz-1.7B-Base-GGUF/qwen3-tts-12hz-1.7b-base-orig.gguf" \
#     "base_models/qwen3-tts-12hz-1.7b-base-orig.gguf" \
#     16 &

download \
    "https://huggingface.co/audio-cpp/audio.cpp-gguf/resolve/main/Qwen3-TTS-12Hz-1.7B-VoiceDesign-GGUF/qwen3-tts-12hz-1.7b-voicedesign-bf16.gguf" \
    "base_models/qwen3-tts-12hz-1.7b-voicedesign-bf16.gguf" \
    16 &

wait

echo "All downloads finished."
