const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    // List Weapons
    app.get('/weapons', (req, res, next) => {
        mysql.query(`SELECT id, name, picture FROM weapons
                    WHERE weapon_type IS NOT NULL`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:13)`);
                res.render('select_weapons', {
                    'title': 'Weapons',
                    'results': results,
                    session: req.session.user
                });
            });
    });

    // List Spell Tools
    app.get('/spell_tools', (req, res, next) => {
        mysql.query(`SELECT id, name, picture FROM weapons
                    WHERE spell_tool_type IS NOT NULL`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:31)`);
                res.render('select_spell_tools', {
                    'title': 'Spell Tools',
                    'results': results,
                    session: req.session.user
                });
            });
    });

    // List Shields
    app.get('/shields', (req, res, next) => {
        mysql.query(`SELECT id, name, picture FROM weapons
                    WHERE shield_size IS NOT NULL ORDER BY weapons.id`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:48)`);
                res.render('select_shields', {
                    'title': 'Shields',
                    'results': results,
                    session: req.session.user
                });
            });
    });

    // List Armors
    app.get('/armor', (req, res, next) => {
        mysql.query(`SELECT id, name, picture FROM cms.armor ORDER BY armor.id`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:66)`);
                res.render('select_armors', {
                    'title': 'Armor',
                    'results': results,
                    session: req.session.user
                });
            });
    });

    // List Rings
    app.get('/rings', (req, res, next) => {
        mysql.query(`SELECT id, name, picture FROM rings`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:82)`);
                res.render('select_rings', {
                    'title': 'Rings',
                    'results': results,
                    session: req.session.user
                });
            });
    });


    // List Spells
    app.get('/spells', (req, res, next) => {
        mysql.query(`SELECT id, name, picture FROM cms.spells`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:95)`);
                res.render('select_spells', {
                    'title': 'Spells',
                    'results': results,
                    session: req.session.user
                });
            });
    });

    // List Profiles
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

    // List Pages
    app.get('/blog', (req, res, next) => {
        mysql.query(`SELECT * FROM pages`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:82)`);
                res.render('select_pages', {
                    'title': 'Pages',
                    'results': results,
                    session: req.session.user
                });
            });
    });

    // List Spells
    app.get('/search_results', (req, res, next) => {
        mysql.query(`SELECT id, name, picture FROM cms.weapons
        INN`, [req.query.searchword],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:95)`);
                res.render('select_spells', {
                    'title': 'Spells',
                    'results': results,
                    session: req.session.user
                });
            });
    });
};