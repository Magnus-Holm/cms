const mysql = require('../config/mysql.js')();

module.exports = function (app) {
    app.get('/profile', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        mysql.query(`SELECT users.id, users.username, users.picture, rank.name AS rank FROM users
        INNER JOIN rank ON users.rank_id = rank.id
        WHERE users.id = ?`, [req.session.user],
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:82)`);
                res.render('profile', {
                    'title': 'Profile',
                    result: result[0],
                    session: req.session.user
                });
            });
    });
};