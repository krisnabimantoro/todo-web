import { Elysia } from "elysia";
import controllerRoute from "./api";

const app = new Elysia().use(controllerRoute).listen(3031);

console.log(app.routes);
console.log(`🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`);
