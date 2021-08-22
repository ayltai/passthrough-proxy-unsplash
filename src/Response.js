'use strict';

class Response {
    contentType;
    statusCode;

    type = contentType => {
        this.contentType = contentType;
        return this;
    };

    status = statusCode => {
        this.statusCode = statusCode;
        return this;
    };

    send = body => {
        return {
            statusCode : this.statusCode || 200,
            headers    : {
                'Content-Type'               : typeof body === 'object' ? 'application/json' : 'html/text',
                'Access-Control-Allow-Origin': '*',
            },
            body       : typeof body === 'object' ? JSON.stringify(body) : String(body),
        };
    };

    sendError = (statusCode, message) => {
        return {
            statusCode,
            headers : {
                'Content-Type'               : 'application/json',
                'Access-Control-Allow-Origin': '*',
            },
            body    : message ? JSON.stringify({
                error : message,
            }) : null,
        };
    };

    sendStatus = statusCode => {
        return {
            statusCode,
        };
    };
}

exports.Response = Response;
