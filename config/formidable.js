const formidable = require('express-formidable');

module.exports = function (app) {
    app.use(formidable());
    // app.use(formidable.urlencoded({
    //     'extended': true
    // }));
};