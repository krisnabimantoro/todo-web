import { Elysia } from "elysia";
import controllerRoute from "./api";
import { docs } from "./libs/swagger";

const app = new Elysia().use(controllerRoute).use(docs).listen(3031);

console.log(app.routes);
console.log(`🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`);
