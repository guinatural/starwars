#!/bin/bash
echo "🚀 Iniciando Chatbot SKDVN com IA local (Ollama + Mistral)..."
docker start ollama || docker run -d --name ollama -p 11434:11434 ollama/ollama
ollama run mistral
