#!/bin/bash

# 🚀 SCRIPT DE IMPORTAÇÃO DE TAREFAS NO LINEAR - STARWARS

echo "🔐 Definindo variável de ambiente LINEAR_API_KEY..."
if [ -z "$LINEAR_API_KEY" ]; then
  export LINEAR_API_KEY="GUI"
  echo "🔐 Token definido no script."
else
  echo "🔐 Token já estava definido no ambiente."
fi


echo "📂 Acessando diretório do script..."
cd ~/projetos/starwars/src || { echo "❌ Pasta src não encontrada"; exit 1; }

echo "📦 Instalando dependências Node (axios)..."
npm install axios --silent

echo "🚀 Executando script de importação de tarefas..."
node import_linear_tasks.js

echo "📝 Registrando no diário..."
echo "✅ $(date '+%d/%m/%Y') - Tarefas importadas com sucesso via script" >> ~/projetos/starwars/docs/diario.md

echo "📤 Fazendo commit e push para o GitHub..."
cd ~/projetos/starwars
git add .
git commit -m "✅ Importação automática de tarefas Linear via script"
git push

echo "✅ Finalizado com sucesso!"
