#!/bin/bash

cd ~/projetos/starwars || exit

# Verifica se há alterações
if [[ -n $(git status --porcelain) ]]; then
  echo "🔍 Alterações detectadas. Commit automático em andamento..."

  git add .

  MSG="🚀 Auto Commit: $(date '+%Y-%m-%d %H:%M:%S')"
  git commit -m "$MSG"
  git push

  echo "✅ Commit e push concluídos!"
else
  echo "✅ Nenhuma alteração detectada. Tudo em dia!"
fi
