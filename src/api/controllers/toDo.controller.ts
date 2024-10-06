import { Elysia, t } from "elysia";
import { prismaClient } from "../../libs/prismaClient";

const cekRoute = new Elysia()
  .model({ "todo.Model": t.Object({ name_activity: t.String(), id_status: t.Integer(), date_todo: t.String() }) })
  .post(
    "/create",
    async ({ body }) => {
      return await prismaClient.todo.create({
        data: { ...body },
        select: {
          id: true,
          name_activity: true,
          date_todo: true,
          id_status: true,
        },
      });
    },
    {
      body: "todo.Model",
    }
  )
  .get("/cek", () => "ril coy");

export default cekRoute;
