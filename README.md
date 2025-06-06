# 🚀 Projeto STARWARS

> Stack profissional de automações inteligentes com IA local, DevOps, segurança e clean code.

![Docker](https://img.shields.io/badge/Docker-n8n-blue)
![IA Local](https://img.shields.io/badge/Ollama-Mistral%20%7C%20Llama3-green)
![License](https://img.shields.io/badge/license-MIT-blue)

---

## 🧠 Visão Geral

**STARWARS** é um projeto modular focado em automações técnicas, IA prática e gestão de tarefas, voltado para produtividade, estudo e escalabilidade real.

---

## 🏗️ Componentes da Stack

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

## 🎯 Objetivos Principais

- ✅ **Chatbot SKDVN**: assistente técnico que responde com IA via n8n
- ✅ **Tutor de Italiano (Laaro)**: corrige frases e ensina com IA
- 🔜 **Interface Telegram**: controle remoto por chat
- 🔜 **Chains IA + Cloud Deploy (AWS)**: escalabilidade total

---

## 📂 Documentação

| Documento                  | Descrição                                      |
|---------------------------|-----------------------------------------------|
| [`setup.md`](./docs/setup.md)               | Configuração local com Docker e backups |
| [`linear.md`](./docs/linear.md)             | Integração total com Linear API         |
| [`chatbot_skdvn.md`](./docs/chatbot_skdvn.md)| Chatbot técnico com IA via n8n          |
| [`tutor_italiano.md`](./docs/tutor_italiano.md)| Tutor com IA que responde e corrige     |
| [`cronograma.md`](./docs/cronograma.md)     | Cronograma e fases detalhadas           |

---

## 🚀 Deploy Rápido

```bash
cd docker
docker-compose up -d
xdg-open http://localhost:5678
