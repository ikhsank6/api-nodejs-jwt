const bodyParser = require('body-parser');
const express = require('express');

// ROUTES
// ==============================================
express.application.prefix = express.Router.prefix = function (path, configure) {
    var router = express.Router();
    this.use(path, router);
    configure(router);
    return router;
};

const app = express() ,
port = process.env.PORT || 3000;
var morgan = require('morgan');

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
app.use(morgan('dev'));

var route = require('./routes/router');
route(app);

app.listen(port);
console.log(`RESTful API server started on: ${port}`);