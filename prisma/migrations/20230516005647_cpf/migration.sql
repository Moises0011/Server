/*
  Warnings:

  - Added the required column `cpf` to the `aluno` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_aluno" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "cpf" INTEGER NOT NULL
);
INSERT INTO "new_aluno" ("id", "nome") SELECT "id", "nome" FROM "aluno";
DROP TABLE "aluno";
ALTER TABLE "new_aluno" RENAME TO "aluno";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
