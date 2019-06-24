const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    // Deleting weapon
    app.get('/admin/weapon/delete/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons
                    WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:7)`);
                res.render('admin/admin_delete_weapon', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/weapon/delete/:id', (req, res, next) => {
        mysql.query(`DELETE FROM weapons
            WHERE weapons.id = ?`,
            [req.params.id],
            function (err) {
                if (err) return next(`${err} at db.query (${__filename}:21)`);
                res.status(200);
                res.end();
            });
    });

    // Deleting shield
    app.get('/admin/shield/delete/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons
                    WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:33)`);
                res.render('admin/admin_delete_shield', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/shield/delete/:id', (req, res, next) => {
        mysql.query(`DELETE FROM weapons
            WHERE weapons.id = ?`,
            [req.params.id],
            function (err) {
                if (err) return next(`${err} at db.query (${__filename}:47)`);
                res.status(200);
                res.end();
            });
    });

    // Deleting spell tool
    app.get('/admin/spell_tool/delete/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons
                    WHERE weapons.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:59)`);
                res.render('admin/admin_delete_spell_tool', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/spell_tool/delete/:id', (req, res, next) => {
        mysql.query(`DELETE FROM weapons
            WHERE weapons.id = ?`,
            [req.params.id],
            function (err) {
                if (err) return next(`${err} at db.query (${__filename}:73)`);
                res.status(200);
                res.end();
            });
    });

    // Deleting armor
    app.get('/admin/armor/delete/:id', (req, res, next) => {
        mysql.query(`SELECT armor.id AS id, name, defense_physical, defense_elemental, resistance, poise, durability,
                    weight, armor_slots.slot_name AS armor_slot, notes, picture FROM cms.armor
                    INNER JOIN armor_slots ON armor.armor_slot = armor_slots.id
                    WHERE armor.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:85)`);
                res.render('admin/admin_delete_armor', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/armor/delete/:id', (req, res, next) => {
        mysql.query(`DELETE FROM armor
            WHERE armor.id = ?`,
            [req.params.id],
            function (err) {
                if (err) return next(`${err} at db.query (${__filename}:101)`);
                res.status(200);
                res.end();
            });
    });

    // Deleting ring
    app.get('/admin/ring/delete/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM rings
                    WHERE rings.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:113)`);
                res.render('admin/admin_delete_ring', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/ring/delete/:id', (req, res, next) => {
        mysql.query(`DELETE FROM rings
            WHERE rings.id = ?`,
            [req.params.id],
            function (err) {
                if (err) return next(`${err} at db.query (${__filename}:127)`);
                res.status(200);
                res.end();
            });
    });

    // Deleting spell
    app.get('/admin/spell/delete/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM spells
                    WHERE spells.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:139)`);
                res.render('admin/admin_delete_spell', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0]
                });
            });
    });

    app.delete('/admin/spell/delete/:id', (req, res, next) => {
        mysql.query(`DELETE FROM spells
            WHERE spells.id = ?`,
            [req.params.id],
            function (err) {
                if (err) return next(`${err} at db.query (${__filename}:153)`);
                res.status(200);
                res.end();
            });
    });

    // Deleting user
    app.get('/admin/user/delete/:id', (req, res, next) => {
        mysql.query(`SELECT users.id, users.username, users.password, 
                    users.picture, rank.name AS rank FROM users
                    INNER JOIN cms.rank ON users.rank_id = rank.id
                    WHERE users.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:165)`);
                res.render('admin/admin_delete_user', {
                    'title': 'admin',
                    'db': results[0].username,
                    'results': results[0],
                });
            });
    });

    app.delete('/admin/user/delete/:id', (req, res, next) => {
        mysql.query(`DELETE FROM users
            WHERE users.id = ?`,
            [req.params.id],
            function (err) {
                if (err) return next(`${err} at db.query (${__filename}:181)`);
                res.status(200);
                res.end();
            });
    });

    // Deleting menu
    app.get('/admin/menu/delete/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM cms.menu WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:193)`);
                res.render('admin/admin_delete_menu', {
                    'title': 'admin',
                    'db': results[0].name,
                    'results': results[0],
                });
            });
    });

    app.delete('/admin/menu/delete/:id', (req, res, next) => {
        mysql.query(`DELETE FROM cms.menu WHERE id = ?`,
            [req.params.id],
            function (err) {
                if (err) return next(`${err} at db.query (${__filename}:206)`);
                res.status(200);
                res.end();
            });
    });
};