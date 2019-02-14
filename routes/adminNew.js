const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    app.get('/admin/weapons/new', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM weapon_type`,
                    function (err, weapon_type) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_new_weapons', {
                            'title': 'admin',
                            'db': 'New Weapon',
                            result: result[0],
                            weapon_type: weapon_type
                        });
                    });
            });
    });

    app.post('/admin/klasser/new', (req, res, next) => {
        mysql.query(`INSERT INTO classes SET classes.name = ?, 
        classes.age_id = ?, classes.level_id = ?, classes.style_id = ?, 
        classes.instructor_id = ?, classes.price = ?`,
            [req.body.name, req.body.age_id, req.body.level_id,
                req.body.style_id, req.body.instructor_id,
                req.body.price
            ], (err, results) => {
                if (err) return next(err);
                res.redirect('/admin/klasser');
            });
    });
};