const mysql = require('../config/mysql.js')();
const bcrypt = require('bcryptjs');
module.exports = function (app) {

    app.get('/login', (req, res, next) => {
        if (req.query.status && req.query.status === 'badcredentials') {
            res.locals.status = 'ugyldigt brugernavn eller adgangskode';
        }
        res.render('login', {
            title: 'Log ind',
            'session': req.session.user
        });
    });

    app.post('/login', (req, res, next) => {
        mysql.query(`SELECT id, password FROM users 
            WHERE username = ?`,
            [req.fields.username], (err, result) => {
                if (err) return next(`${err} at db.query (${__filename}:12)`);
                if (bcrypt.compareSync(req.fields.password, result[0].password)) {
                    req.session.user = result[0].id;
                    res.redirect('/');
                } else {
                    res.render('/login', {
                        'title': 'Log in',
                        'errorLogin': 'Dit brugernavn eller password var forkert'
                    });
                }
            });
    });
}