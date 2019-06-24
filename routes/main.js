const mysql = require('../config/mysql.js')();

module.exports = function (app) {
    app.get('/', (req, res, next) => {
        mysql.query(`SELECT * FROM cms.menu ORDER BY position`,
            function (err, menuLinks) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                res.render('page', {
                    title: 'Front page',
                    menuLinks: menuLinks,
                    session: req.session.user
                });
            });
    });
};