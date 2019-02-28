const mysql = require('../config/mysql.js')();
const bcrypt = require('bcryptjs');

module.exports = function (app) {
    app.get('/admin/login', (req, res, next) => {
        res.render('admin/login', {
            'title': 'Log in',
            'session': req.session.user
        });
    });

    app.post('/admin/login', (req, res, next) => {
        mysql.query(`SELECT id, password FROM users 
            WHERE username = ?`,
            [req.fields.username], (err, result) => {
                if (err) return next(`${err} at db.query (${__filename}:12)`);
                if (bcrypt.compareSync(req.fields.password, result[0].password)) {
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

    app.use('/admin', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/admin/login');
            return;
        } else {
            mysql.query(`SELECT rank_id AS rank from users
                    WHERE id = ?`, [req.session.user], function (err, rank) {
                if (err) return next(`${err} at db.query (${__filename}:33)`);
                if (rank[0].rank !== 1) {
                    res.render('admin/login', {
                        'title': 'Log in',
                        'errorLogin': 'Du har ikke tilladelse'
                    });
                    return;
                } else {
                    next();
                }
            })
        }
    });

};