const mysql = require('../config/mysql.js')();

module.exports = function (app) {
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

    app.get('/admin', (req, res) => {
        res.render('admin/adminIndex', {
            'title': 'admin',
            'db': 'Index',
        });
    });


    // app.get('/admin/klasser/edit/:id', (req, res) => {
    //     const id = req.params.id;
    //     mysql.query(`SELECT * FROM classes WHERE id = ?`, [id],
    //         function (err, results) {
    //             if (err) res.send(err);
    //             const current = results[0];
    //             mysql.query(`SELECT id, title FROM age_groups`, [id],
    //                 function (err, results) {
    //                     if (err) res.send(err);
    //                     const ages = results;
    //                     mysql.query(`SELECT id, title FROM levels`, [id],
    //                         function (err, results) {
    //                             if (err) res.send(err);
    //                             const levels = results;
    //                             mysql.query(`SELECT id, title FROM dance_styles`, [id],
    //                                 function (err, results) {
    //                                     if (err) res.send(err);
    //                                     const dances = results;
    //                                     mysql.query(`SELECT id, name FROM instructors`, [id],
    //                                         function (err, results) {
    //                                             if (err) res.send(err);
    //                                             const instructors = results;
    //                                             res.render('admin/admin_edit', {
    //                                                 'title': 'admin',
    //                                                 'db': 'Klasser',
    //                                                 id,
    //                                                 ages,
    //                                                 levels,
    //                                                 dances,
    //                                                 instructors,
    //                                                 current
    //                                             });
    //                                         });
    //                                 });
    //                         });
    //                 });
    //         });
    // });


    // app.patch('/admin/klasser/edit/:id', (req, res) => {
    //     mysql.query(`UPDATE classes
    //     SET classes.name = ?, classes.age_id = ?, 
    //     classes.level_id = ?, classes.style_id = ?, 
    //     classes.instructor_id = ?, classes.price = ?
    //     WHERE classes.id = ?`,
    //         [req.body.name, req.body.age_id, req.body.level_id,
    //             req.body.style_id, req.body.instructor_id,
    //             req.body.price, req.params.id
    //         ],
    //         function (err, results) {
    //             if (err) return res.send(err);
    //             res.status(200);
    //             res.end();
    //         }
    //     );
    // });

    // app.get('/admin/klasser/delete/:id', (req, res) => {
    //     mysql.query(`SELECT * FROM classes
    //                 WHERE classes.id = ?`,
    //         [req.params.id],
    //         function (err, results) {
    //             if (err) res.send(err);
    //             res.render('admin/admin_delete', {
    //                 'title': 'admin',
    //                 'db': 'Klasser',
    //                 'results': results[0]
    //             });
    //         });
    // });

    // app.delete('/admin/klasser/delete/:id', (req, res) => {
    //     mysql.query(`DELETE FROM classes
    //         WHERE classes.id = ?`,
    //         [req.params.id],
    //         function (err, results) {
    //             if (err) return res.send(err);
    //             res.status(200);
    //             res.end();
    //         });
    // });

    // app.get('/admin/klasser/new', (req, res, next) => {
    //     mysql.query(`SELECT * FROM classes`,
    //         function (err, results) {
    //             if (err) res.send(err);
    //             const current = results[0];
    //             mysql.query(`SELECT id, title FROM age_groups`,
    //                 function (err, results) {
    //                     if (err) res.send(err);
    //                     const ages = results;
    //                     mysql.query(`SELECT id, title FROM levels`,
    //                         function (err, results) {
    //                             if (err) res.send(err);
    //                             const levels = results;
    //                             mysql.query(`SELECT id, title FROM dance_styles`,
    //                                 function (err, results) {
    //                                     if (err) res.send(err);
    //                                     const dances = results;
    //                                     mysql.query(`SELECT id, name FROM instructors`,
    //                                         function (err, results) {
    //                                             if (err) res.send(err);
    //                                             const instructors = results;
    //                                             res.render('admin/admin_new', {
    //                                                 'title': 'admin',
    //                                                 'db': 'Klasser',
    //                                                 ages,
    //                                                 levels,
    //                                                 dances,
    //                                                 instructors,
    //                                                 current
    //                                             });
    //                                         });
    //                                 });
    //                         });
    //                 });
    //         });
    // });

    // app.post('/admin/klasser/new', (req, res, next) => {
    //     mysql.query(`INSERT INTO classes SET classes.name = ?, 
    //     classes.age_id = ?, classes.level_id = ?, classes.style_id = ?, 
    //     classes.instructor_id = ?, classes.price = ?`,
    //         [req.body.name, req.body.age_id, req.body.level_id,
    //             req.body.style_id, req.body.instructor_id,
    //             req.body.price
    //         ], (err, results) => {
    //             if (err) return next(err);
    //             res.redirect('/admin/klasser');
    //         });
    // });
};