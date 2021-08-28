'use strict';

const { HttpsClient, } = require('./HttpsClient');
const { Router,      } = require('./Router');

const app = new Router();

app.get('/photos/random', async (request, response) => {
    try {
        const body = await HttpsClient.get(`https://api.unsplash.com${request.path}?${Object.keys(request.query).map(key => `${key}=${request.query[key]}`).join('&')}`);

        return response.send(body);
    } catch (error) {
        console.error(error);

        return response.sendError(502);
    }
});

exports.handler = async (event, context, callback) => app.serve(event, context, callback);
