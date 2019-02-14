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

    app.use('/admin', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/admin/login');
            return;
        } else {
            mysql.query(`SELECT rank_id AS rank from users
                    WHERE id = ?`, [req.session.user], function (err, rank) {
                if (err) return next(`${err} at db.query (${__filename}:9)`);
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
}