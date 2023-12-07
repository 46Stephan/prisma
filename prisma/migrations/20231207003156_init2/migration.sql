/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "Usuario" (
    "id" TEXT NOT NULL,
    "nome" VARCHAR(30) NOT NULL,
    "idade" INTEGER NOT NULL,
    "email" VARCHAR(30) NOT NULL,
    "password" VARCHAR(20) NOT NULL,
    "github" TEXT,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Produto" (
    "id" TEXT NOT NULL,
    "descricao" VARCHAR(100) NOT NULL,
    "valor" DOUBLE PRECISION NOT NULL,
    "quantidadeEstoque" INTEGER NOT NULL,
    "tipoProduto" VARCHAR(20) NOT NULL,
    "dataCriacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "disponivel" BOOLEAN,

    CONSTRAINT "Produto_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Loja" (
    "cnpj" TEXT NOT NULL,
    "nome" VARCHAR(30) NOT NULL,
    "segmento" TEXT DEFAULT 'alimentação',
    "endereco" VARCHAR(50) NOT NULL,
    "telefone" TEXT,
    "quantidadeFiliais" INTEGER NOT NULL,
    "dataHoraAbertura" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Loja_pkey" PRIMARY KEY ("cnpj")
);

-- CreateTable
CREATE TABLE "Fornecedor" (
    "id" TEXT NOT NULL,
    "nome" VARCHAR(50) NOT NULL,
    "email" VARCHAR(30) NOT NULL,
    "avaliacao" DOUBLE PRECISION NOT NULL,
    "dataHoraCriacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dataHoraAtualizacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Fornecedor_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_email_key" ON "Usuario"("email");
