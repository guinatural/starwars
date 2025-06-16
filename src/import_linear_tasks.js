const axios = require("axios");
const fs = require("fs");

const token = process.env.LINEAR_API_KEY;

if (!token) {
  console.error("❌ LINEAR_API_KEY não definido.");
  process.exit(1);
}

const tarefas = JSON.parse(fs.readFileSync("./data/starwars_linear_tasks.json", "utf8"));

(async () => {
  for (const tarefa of tarefas) {
    const mutation = {
      query: `
        mutation {
          issueCreate(input: {
            title: "${tarefa.title}",
            description: """${tarefa.description}""",
            teamId: "${tarefa.teamId}",
            projectId: "${tarefa.projectId}"
          }) {
            success
            issue { id title }
          }
        }
      `,
    };

    try {
      const res = await axios.post(
        "https://api.linear.app/graphql",
        mutation,
        {
          headers: {
            Authorization: token,
            "Content-Type": "application/json",
          },
        }
      );
      console.log("✅ Criado:", res.data.data.issueCreate.issue.title);
    } catch (err) {
      console.error("❌ Erro:", tarefa.title, err.response?.data || err.message);
    }
  }
})();
