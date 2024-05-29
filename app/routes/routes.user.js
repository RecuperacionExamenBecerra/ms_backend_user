import { Router } from "express";
import { 
    crearUsuario, 
    eliminarUsuario, 
    listarUsuario, 
    modificarUsuario, 
    mostrarUsuario,
    logueoUsuario 
} from "../controllers/controllers.user.js";
import { verifyToken } from "../middlewares/oauth.js";

const rutaUser = Router();

// Ruta para mostrar un usuario por id
rutaUser.get("/user/:id", mostrarUsuario);

// Ruta para mostrar todos los usuarios
rutaUser.get("/user", listarUsuario);

// Ruta para crear un usuario
rutaUser.post("/user", crearUsuario);

// Ruta para modificar un usuario
rutaUser.put("/user", modificarUsuario);

// Ruta para eliminar un usuario
rutaUser.delete("/user", eliminarUsuario);

// Ruta para loguearse
rutaUser.post("/login", logueoUsuario);

export default rutaUser;
