const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    // Deleting weapon
    app.get('/admin/weapon/delete/:id', (req, res) => {
        mysql.query(`SELECT * FROM weapons
                    WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) res.send(err);
                res.render('admin/admin_delete_weapon', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/weapon/delete/:id', (req, res) => {
        mysql.query(`DELETE FROM weapons
            WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return res.send(err);
                res.status(200);
                res.end();
            });
    });

    // Deleting shield
    app.get('/admin/shield/delete/:id', (req, res) => {
        mysql.query(`SELECT * FROM weapons
                    WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) res.send(err);
                res.render('admin/admin_delete_shield', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/shield/delete/:id', (req, res) => {
        mysql.query(`DELETE FROM weapons
            WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return res.send(err);
                res.status(200);
                res.end();
            });
    });

    // Deleting spell tool
    app.get('/admin/spell_tool/delete/:id', (req, res) => {
        mysql.query(`SELECT * FROM weapons
                    WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) res.send(err);
                res.render('admin/admin_delete_spell_tool', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/spell_tool/delete/:id', (req, res) => {
        mysql.query(`DELETE FROM weapons
            WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return res.send(err);
                res.status(200);
                res.end();
            });
    });

    // Deleting armor
    app.get('/admin/armor/delete/:id', (req, res) => {
        mysql.query(`SELECT * FROM armor
                    WHERE armor.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) res.send(err);
                res.render('admin/admin_delete_armor', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/armor/delete/:id', (req, res) => {
        mysql.query(`DELETE FROM armor
            WHERE armor.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return res.send(err);
                res.status(200);
                res.end();
            });
    });

    // Deleting ring
    app.get('/admin/ring/delete/:id', (req, res) => {
        mysql.query(`SELECT * FROM rings
                    WHERE rings.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) res.send(err);
                res.render('admin/admin_delete_ring', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/ring/delete/:id', (req, res) => {
        mysql.query(`DELETE FROM rings
            WHERE rings.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return res.send(err);
                res.status(200);
                res.end();
            });
    });

    // Deleting spell
    app.get('/admin/spell/delete/:id', (req, res) => {
        mysql.query(`SELECT * FROM spells
                    WHERE spells.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) res.send(err);
                res.render('admin/admin_delete_spell', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/spell/delete/:id', (req, res) => {
        mysql.query(`DELETE FROM spells
            WHERE spells.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return res.send(err);
                res.status(200);
                res.end();
            });
    });

    // Deleting user
    app.get('/admin/user/delete/:id', (req, res) => {
        mysql.query(`SELECT * FROM users
                    WHERE users.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) res.send(err);
                res.render('admin/admin_delete_user', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/user/delete/:id', (req, res) => {
        mysql.query(`DELETE FROM users
            WHERE users.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return res.send(err);
                res.status(200);
                res.end();
            });
    });
};