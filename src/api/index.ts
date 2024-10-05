import { Elysia } from "elysia";
import cekRoute from "./controllers/toDo.controller";


const controllerRoute = new Elysia().group("/user", (app) => app.use(cekRoute));


export default controllerRoute