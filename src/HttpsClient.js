'use strict';

const https = require('https');

const HttpsClient = {};

HttpsClient.get = async (url) => {
    const from = 'https://'.length;
    const to   = url.indexOf('/', from);

    return new Promise((resolve, reject) => {
        const request = https.get({
            host    : url.substring(from, to),
            path    : url.substring(to),
            method  : 'GET',
            headers : {
                'Accept' : 'application/json',
            },
        }, response => {
            if (200 <= response.statusCode < 300) {
                let body = '';

                response.on('data', chunk => {
                    body += chunk;
                });

                response.on('close', () => resolve(JSON.parse(body)));
            } else {
                reject(new Error(`Received HTTP ${response.status} for URL ${url}`));

                response.resume();
            }
        });

        request.on('error', reject);
    });
};

exports.HttpsClient = HttpsClient;
