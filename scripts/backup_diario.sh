#!/bin/bash
export RESTIC_PASSWORD="199188"
restic -r ~/backups/starwars backup ~/projetos/starwars --tag "diario"
