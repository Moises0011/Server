import express from "express";
import { router } from "./routes";
import { CreateAlunoController } from "./controllers/alunoCreateController";
import cors from "cors";

const app = express();

app.use(cors());

app.use(express.json());
app.use(router);

const creatAluno = new CreateAlunoController();

router.post("/createAluno", creatAluno.handle);

app.listen(4003, () => console.log("Servidor está em execução on PORT 4003"));
