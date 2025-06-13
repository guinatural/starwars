#!/bin/bash

# Diretório base do projeto
cd ~/projetos/starwars || exit

# Data formatada
DATA=$(date +"%Y-%m-%d %H:%M")

# Adiciona tudo
git add .

# Commita com mensagem automática
git commit -m "📦 Auto-commit em $DATA"

# Faz push
git push origin master
