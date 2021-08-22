'use strict';

const { Request,  } = require('./Request');
const { Response, } = require('./Response');

const defaultHandler = (request, response) => response.sendError(404);

class Router {
    gets = [];

    serve = async (event) => {
        let routes = [];
        if (event.httpMethod === 'GET') routes = this.gets;

        const path = Object.keys(routes).find(route => event.path.startsWith(route));
        if (path) {
            const handler = routes[path];
            if (handler) return await handler(new Request(event), new Response());
        }

        return defaultHandler(new Request(event), new Response());
    };

    get = (path, callback) => {
        this.gets[path] = callback;

        return this;
    };
}

exports.Router = Router;
