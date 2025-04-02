#!/bin/sh

# Start the Ollama server in the background
ollama serve &

# Wait for the server to start
sleep 5

# Pull the required model (using MODEL_NAME variable)
ollama pull deepseek-r1:1.5b

# Keep the container running
tail -f /dev/null
