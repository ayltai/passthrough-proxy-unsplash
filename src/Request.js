'use strict';

class Request {
    event;

    constructor(event) {
        this.event = event;
    }

    get method() {
        return this.event.httpMethod;
    }

    get path() {
        return this.event.path;
    }

    get query() {
        return this.event.queryStringParameters;
    }
}

exports.Request = Request;
