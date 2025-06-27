# STARWARS IA — Stack de Automação Inteligente com IA Local

> **SKDVN — Star Wars Knowledge Development Node**

Primeira versão do sistema de automação com IA local usando n8n + Ollama + MongoDB.

---

## Visão Geral

O projeto **STARWARS** integra o [n8n](https://n8n.io/) com modelos LLM locais via [Ollama](https://ollama.com/) e persistência de histórico no MongoDB, permitindo interações de linguagem natural com IA **sem depender de nuvem**.

Você conversa com a IA dentro do n8n, e ela responde usando modelos como `llama3` ou `mistral` via servidor local. Toda interação é registrada no MongoDB para análise, auditoria e construção de conhecimento técnico.

---

## Componentes da Stack

| Componente   | Função Técnica                              |
|--------------|---------------------------------------------|
| n8n          | Orquestração de APIs, dados e automações    |
| PostgreSQL   | Banco de dados para persistência do n8n     |
| Redis        | Cache e workers para tarefas assíncronas    |
| API Linear   | Gestão de tarefas e progresso (futuro)      |
| LangChain    | Fluxos de raciocínio IA                     |
| Ollama       | IA local com modelos LLM (Mistral, Llama3)  |
| MongoDB      | Persistência das conversas e auditoria      |
| GitHub/Docker| Portabilidade, CI/CD e versionamento        |

---

## Objetivos do Projeto

- ✅ **Chatbot SKDVN**: Assistente técnico alimentado por IA local via n8n
- ✅ **Persistência de conversas no MongoDB**: Toda interação registrada para análise e consulta
- ✅ **Fluxo extensível**: Pronto para integração com outras ferramentas e APIs (ex: Linear, Telegram, etc.)
- ✅ **Automação DevOps e produtividade**
- 🔜 **Interface Telegram e chains IA cloud (AWS)**

---

## Como Executar Localmente

```bash
git clone https://github.com/guinatural/starwars.git
cd starwars
docker-compose up -d
xdg-open http://localhost:5678
```
> O n8n estará disponível em [http://localhost:5678](http://localhost:5678)

---

## Requisitos

- Docker + docker-compose
- Modelo `llama3` instalado: `ollama pull llama3`
- MongoDB local (configurado no docker-compose)
- Credenciais configuradas no n8n para MongoDB

---

## Como Funciona

1. Usuário envia mensagem via chat do n8n
2. A entrada é repassada ao modelo Ollama (ex: `llama3`)
3. A resposta é retornada ao usuário **e salva** no MongoDB
4. Todo histórico pode ser consultado para auditoria e análise

---

## Backup Automático

- Workflows salvos em `docker/n8n/export.json`
- Backup diário em `.backup/*.zip` (via GitHub Actions)

---

## Estrutura de Pastas

```
.
├── docker/
│   ├── docker-compose.yml
│   └── n8n/
│       └── export.json
├── .github/
│   └── workflows/
│       └── backup-n8n.yml
├── .backup/
├── README.md
└── outros arquivos...
```

---

## Documentação e Tutoriais

| Documento           | Descrição                                    |
|---------------------|-----------------------------------------------|
| `setup.md`          | Configuração local com Docker e backups       |
| `linear.md`         | Integração total com API Linear (futuro)      |
| `chatbot_skdvn.md`  | Chatbot técnico com IA via n8n                |
| `cronograma.md`     | Cronograma e fases detalhadas                 |

---

## Autor

[guinatural](https://github.com/guinatural)

---
