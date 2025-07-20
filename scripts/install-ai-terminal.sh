#!/bin/bash
# AI Terminal Assistant Setup Script

echo "🔧 Installing AI Terminal Tools..."

sudo apt update
sudo apt install -y python3-pip curl

pip install open-interpreter

curl -fsSL https://ollama.com/install.sh | sh
ollama pull llama3

echo "alias ai='interpreter'" >> ~/.bashrc

echo "✅ AI Terminal Setup Complete. Type 'ai' to start the assistant."
