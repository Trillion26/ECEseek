#!/bin/sh

# Start the Ollama server in the background
ollama serve --timeout 600 &

# Wait for the server to start
sleep 5

# Pull the required model (using MODEL_NAME variable)
ollama pull "${MODEL_NAME}"

# Keep the container running
tail -f /dev/null
