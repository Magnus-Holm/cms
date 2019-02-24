const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    app.get('/login', (req, res, next) => {
        if (req.query.status && req.query.status === 'badcredentials') {
            res.locals.status = 'ugyldigt brugernavn eller adgangskode';
        }
        res.render('login', {
            title: 'Log ind',
        });
    });
}