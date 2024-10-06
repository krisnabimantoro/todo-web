-- CreateTable
CREATE TABLE "categorie" (
    "id" SERIAL NOT NULL,
    "date_todo" DATE NOT NULL,

    CONSTRAINT "categorie_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "status" (
    "id" SERIAL NOT NULL,
    "name_status" VARCHAR NOT NULL,

    CONSTRAINT "status_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "todo" (
    "id" SERIAL NOT NULL,
    "name_activity" VARCHAR NOT NULL,
    "id_status" INTEGER NOT NULL,
    "id_date" INTEGER NOT NULL,
    "date_todo" DATE NOT NULL,

    CONSTRAINT "todo_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "todo" ADD CONSTRAINT "todo_id_date_fkey" FOREIGN KEY ("id_date") REFERENCES "categorie"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "todo" ADD CONSTRAINT "todo_id_status_fkey" FOREIGN KEY ("id_status") REFERENCES "status"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
