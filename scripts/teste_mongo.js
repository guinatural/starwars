// Script para testar conexão e inserção no MongoDB
const { MongoClient } = require("mongodb");

const uri = "mongodb://mongo:minhaSenhaSegura@localhost:27017/starwars_ai?authSource=admin";
const client = new MongoClient(uri);

async function main() {
  try {
    await client.connect();
    const db = client.db("starwars_ai");

    const result = await db.collection("respostas_ia").insertOne({
      pergunta: "quem é você?",
      resposta: "Sou a IA Jedi que vive dentro do MongoDB."
    });

    console.log("✅ Documento inserido com ID:", result.insertedId);
  } catch (err) {
    console.error("❌ Erro ao conectar ou inserir:", err.message);
  } finally {
    await client.close();
  }
}

main();
