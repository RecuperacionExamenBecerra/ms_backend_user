import swaggerAutogen from 'swagger-autogen';
import { config } from 'dotenv';
config();

let port = process.env.PORT || 3000;

const doc = {
  info: {
    title: 'api de seguridad',
    description: 'manejo de usuarios'
  },
  host: 'localhost:'+ port + '/api'
};

const outputFile = './swagger-output.json';
const routes = [
    '../routes/routes.main.js',
    '../routes/routes.user.js'
    ];


swaggerAutogen()(outputFile, routes, doc);