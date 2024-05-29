"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports["default"] = void 0;
var _express = require("express");
var _controllersUser = require("../controllers/controllers.user.js");
var _oauth = require("../middlewares/oauth.js");
var rutaUser = (0, _express.Router)();

// Ruta para mostrar un usuario por id
rutaUser.get("/user/:id", _controllersUser.mostrarUsuario);

// Ruta para mostrar todos los usuarios
rutaUser.get("/user", _controllersUser.listarUsuario);

// Ruta para crear un usuario
rutaUser.post("/user", _controllersUser.crearUsuario);

// Ruta para modificar un usuario
rutaUser.put("/user", _controllersUser.modificarUsuario);

// Ruta para eliminar un usuario
rutaUser["delete"]("/user", _controllersUser.eliminarUsuario);

// Ruta para loguearse
rutaUser.post("/login", _controllersUser.logueoUsuario);
var _default = exports["default"] = rutaUser;