
<<<<<<< HEAD
# starwars
projeto AI
=======
# Projeto STARWARS

> Stack de automações inteligentes com IA local, DevOps, segurança e clean code.

![Docker](https://img.shields.io/badge/Docker-n8n-blue)
![IA Local](https://img.shields.io/badge/Ollama-Mistral%20%7C%20Llama3-green)
![License](https://img.shields.io/badge/license-MIT-blue)

---

## Visão Geral

**STARWARS** é um projeto modular focado em automações técnicas, IA prática e gestão de tarefas, voltado para produtividade, estudo e escalabilidade real.

---

## Componentes da Stack

| Componente        | Função Técnica                                         |
| ----------------- | ------------------------------------------------------ |
| **n8n**           | Orquestração de APIs, dados e automações               |
| **PostgreSQL**    | Banco de dados para persistência local                 |
| **Redis**         | Cache + workers                                        |
| **Linear API**    | Gestão de tarefas e progresso                          |
| **LangChain**     | Fluxos de raciocínio IA                                |
| **LlamaIndex**    | Indexação de contextos locais                          |
| **Ollama**        | IA local com modelos como Mistral, Llama3              |
| **GitHub + Docker** | Versionamento e deploy portável                     |

---

## Objetivos Principais

- ✅ **Chatbot SKDVN**: assistente técnico que responde com IA via n8n
- ✅ **Tutor de Italiano (Laaro)**: corrige frases e ensina com IA
- 🔜 **Interface Telegram**: controle remoto por chat
- 🔜 **Chains IA + Cloud Deploy (AWS)**: escalabilidade total

---

## Documentação

| Documento                  | Descrição                                      |
|---------------------------|-----------------------------------------------|
| [`setup.md`](./docs/setup.md)               | Configuração local com Docker e backups |
| [`linear.md`](./docs/linear.md)             | Integração total com Linear API         |
| [`chatbot_skdvn.md`](./docs/chatbot_skdvn.md)| Chatbot técnico com IA via n8n          |
| [`tutor_italiano.md`](./docs/tutor_italiano.md)| Tutor com IA que responde e corrige     |
| [`cronograma.md`](./docs/cronograma.md)     | Cronograma e fases detalhadas           |

---

## Deploy Rápido

```bash
cd docker
docker-compose up -d
xdg-open http://localhost:5678
>>>>>>> 09e14e5 ( Projeto STARWARS — Documentação e Setup)

#  SKDVN — Star Wars Knowledge Development Node

> Primeira versão do sistema de automação com IA local usando n8n + Ollama

---

##  Visão Geral

Este projeto integra o [n8n](https://n8n.io/) com modelos LLM locais via [Ollama](https://ollama.com/), permitindo interações de linguagem natural com IA **sem depender de nuvem**.

Você conversa com a IA dentro do n8n, e ela responde usando modelos como `llama3` ou `mistral` via servidor local.

---

## Tecnologias Usadas

-  Docker
-  Docker Compose
-  n8n (Editor de automações no-code)
-  Ollama (Modelos LLM locais)
-  GitHub Actions (Backup automático)
-  Scripts personalizados (importação de tarefas, backup, etc.)

---

##  Como Executar Localmente

```bash
git clone https://github.com/guinatural/starwars.git
cd starwars
docker-compose up -d

#  SKDVN V1 – Chatbot com IA Local via n8n + Ollama

Este projeto é um protótipo funcional de chatbot alimentado por LLMs locais via Ollama integrado ao n8n.

##  Visão Geral
- Utiliza modelos como `llama3` via Ollama
- Interface de chat interativa diretamente no n8n
- Ideal para suporte, POCs com IA e automações privadas

##  Tecnologias
- n8n (via Docker)
- Ollama (modelos locais)
- GitHub Actions (CI para backup)

##  Como Funciona
1. Usuário envia mensagem via chat do n8n
2. A entrada é repassada ao modelo Ollama
3. A resposta é retornada ao usuário no chat

## 🛠 Requisitos
- Docker + docker-compose
- Modelo `llama3` instalado: `ollama pull llama3`
- Executar: `docker-compose up -d`

##  Backup Automático
- Workflows salvos em `docker/n8n/export.json`
- Backup diário em `.backup/*.zip`

##  Estrutura
.
├── docker/
│ └── docker-compose.yml
│ └── n8n/
│ └── export.json
├── .github/workflows/backup-n8n.yml
├── .backup/
└── README.md


##  Autor
[guinatural](https://github.com/guinatural)

