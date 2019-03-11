const mysql = require('../config/mysql.js')();
const bcrypt = require('bcryptjs');

module.exports = function (app) {
    app.get('/sign_up', (req, res, next) => {
        res.render('sign_up', {
            'title': 'Sign up',
            session: req.session.user
        });
    });

    app.post('/sign_up', (req, res, next) => {
        console.log(req.fields.password);
        
        let hash_pass = bcrypt.hashSync(`${req.fields.password}`, 10);
        mysql.query(`INSERT INTO users SET username = ?, password = '${hash_pass}', rank_id = '2'`,
            [req.fields.username], (err, results) => {
                if (err) return next(`${err} at db.query (${__filename}:14)`);
                res.redirect('/login');
            });
    });
};