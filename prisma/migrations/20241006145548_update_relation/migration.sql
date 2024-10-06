/*
  Warnings:

  - You are about to drop the `categorie` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `date_todo` to the `todo` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "todo" DROP CONSTRAINT "todo_id_date_fkey";

-- AlterTable
ALTER TABLE "todo" ADD COLUMN     "date_todo" DATE NOT NULL;

-- DropTable
DROP TABLE "categorie";
