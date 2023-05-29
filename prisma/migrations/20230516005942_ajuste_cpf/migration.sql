-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_aluno" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "cpf" INTEGER
);
INSERT INTO "new_aluno" ("cpf", "id", "nome") SELECT "cpf", "id", "nome" FROM "aluno";
DROP TABLE "aluno";
ALTER TABLE "new_aluno" RENAME TO "aluno";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
