# STARWARS — Stack de Automação Inteligente com IA Local

> **SKDVN — Star Wars Knowledge Development Node**

Primeira versão do sistema de automação com IA local usando n8n + Ollama + MongoDB. Agora, com novas integrações planejadas e aprimoramentos visando escalabilidade, robustez e extensibilidade.

---

## Visão Geral

O projeto **STARWARS** integra o [n8n](https://n8n.io/) com modelos LLM locais via [Ollama](https://ollama.com/) e persistência de histórico no MongoDB. Nosso objetivo é possibilitar interações em linguagem natural com IA **sem depender de nuvem**, mantendo tudo em ambiente local-first. A arquitetura atual suporta interações no n8n com modelos como `llama3` e `mistral` e registra todo o histórico das conversas para auditoria e análise técnica.

Nosso roadmap inclui expansão para integração com Telegram, API Linear e futuras chains na AWS.

---

## Componentes da Stack

| Componente   | Função Técnica                                                      |
|--------------|---------------------------------------------------------------------|
| n8n          | Orquestração de workflows, automações e integração de APIs          |
| PostgreSQL   | Banco de dados para persistência do n8n                              |
| Redis        | Cache e gerenciamento de tarefas assíncronas                         |
| API Linear   | Gestão de tarefas e progresso (futuro)                               |
| LangChain    | Fluxos de raciocínio IA e composição de agentes inteligentes         |
| Ollama       | IA local com modelos LLM (Mistral, Llama3)                            |
| MongoDB      | Persistência das conversas, logs e auditoria                          |
| Qdrant       | Armazenamento vetorial para busca semântica e recuperação de contexto   |
| GitHub/Docker| Portabilidade, CI/CD e versionamento                                 |
| Telegram     | Comunicação bilateral para envio/recebimento de mensagens e notificações |

---

## Objetivos do Projeto

- ✅ **Chatbot SKDVN**: Assistente técnico impulsionado por IA local via n8n.
- ✅ **Persistência das conversas no MongoDB**: Registro completo para auditoria, análise e construção de conhecimento.
- ✅ **Fluxos extensíveis e híbridos**: Integração combinada de upload direto (via Webhook/Form Trigger) e sincronização com Google Drive.
- ✅ **Integração com Telegram**: Recebimento de perguntas e envio de respostas em tempo real, além de notificações críticas (ex.: operações de deleção no Qdrant).
- ✅ **Automação DevOps e produtividade**: Backups automáticos, CI/CD e versionamento.
- 🔜 **Integração com API Linear e futuras chains IA cloud (AWS)**.

---

## Como Executar Localmente

```bash
git clone https://github.com/guinatural/starwars.git
cd starwars
docker-compose up -d
xdg-open http://localhost:5678
