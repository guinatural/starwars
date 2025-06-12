#!/bin/bash
TIMESTAMP=$(date +%F_%H-%M)
restic -r ~/backups/starwars backup ~/projetos/starwars --tag "manual-$TIMESTAMP"
