// scripts/teste_mongo.js
const { MongoClient } = require("mongodb");

async function main() {
  const uri = "mongodb://mongo:minhaSenhaSegura@localhost:27017/starwars_ai?authSource=admin";
  const client = new MongoClient(uri);
  try {
    await client.connect();
    const db = client.db("starwars_ai");
    const collection = db.collection("respostas_ia");

    const doc = {
      pergunta: "qual seu papel?",
      resposta: "Sou o Jedi-Bot do projeto STARWARS."
    };

    const result = await collection.insertOne(doc);
    console.log("Documento inserido com ID:", result.insertedId);
  } catch (e) {
    console.error("Erro ao conectar ou inserir:", e);
  } finally {
    await client.close();
  }
}

main();
