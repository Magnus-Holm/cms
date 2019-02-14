const mysql = require('../config/mysql.js')();
const bcrypt = require('bcryptjs');

module.exports = function (app) {
    app.get('/admin/login', (req, res) => {
        res.render('admin/login', {
            'title': 'Log in'
        });
    });

    app.post('/admin/login', (req, res, next) => {
        mysql.query(`SELECT id, password FROM users 
            WHERE username = ?`,
            [req.body.username], (err, result) => {
                if (err) return next(`${err} at db.query (${__filename}:16)`);
                if (bcrypt.compareSync(req.body.password, result[0].password)) {
                    req.session.user = result[0].id;
                    res.redirect('/admin');
                } else {
                    res.render('admin/login', {
                        'title': 'Log in',
                        'errorLogin': 'Dit brugernavn eller password var forkert'
                    });
                }
            });
    });
};