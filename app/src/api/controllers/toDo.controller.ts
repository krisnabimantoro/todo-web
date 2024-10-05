import { Elysia } from "elysia";

const cekRoute = new Elysia().get("/123", () => "Halo rek");

export default cekRoute;

