const mysql = require('../config/mysql.js')();

module.exports = function (app) {
    app.get('/admin', (req, res, next) => {
        res.render('admin/adminIndex', {
            'title': 'admin',
            'db': 'Index',
        });
    });

    // List Weapons
    app.get('/admin/weapons', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, damage, aux_effect, damage_reduction, critical, 
                    durability, weapons.range AS bow_range, stability, weight,
                    stats_req, stats_scale, weapon_type.name AS weapon_type, notes, picture
                    FROM weapons
                    INNER JOIN weapon_type ON weapons.weapon_type = weapon_type.id
                    WHERE weapon_type IS NOT NULL`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:13)`);
                res.render('admin/admin_select_weapons', {
                    'title': 'admin',
                    'db': 'Weapons',
                    'results': results
                });
            });
    });

    // List Spell Tools
    app.get('/admin/spell_tools', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, mag_adjust, damage, aux_effect, damage_reduction, critical, durability, stability, weight,
                    stats_req, stats_scale, spell_tool.name AS spell_tool, notes, picture
                    FROM weapons
                    INNER JOIN spell_tool ON weapons.spell_tool_type = spell_tool.id
                    WHERE spell_tool_type IS NOT NULL`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:31)`);
                res.render('admin/admin_select_spell_tools', {
                    'title': 'admin',
                    'db': 'Spell Tools',
                    'results': results
                });
            });
    });

    // List Shields
    app.get('/admin/shields', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, damage, aux_effect, damage_reduction, critical, 
                    durability, stability, weight,
                    stats_req, stats_scale, shield_size.name AS shield_size, notes, picture
                    FROM weapons
                    INNER JOIN shield_size ON weapons.shield_size = shield_size.id
                    WHERE shield_size IS NOT NULL
                    ORDER BY weapons.id`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:48)`);
                res.render('admin/admin_select_shields', {
                    'title': 'admin',
                    'db': 'Shields',
                    'results': results
                });
            });
    });

    // List Armors
    app.get('/admin/armor', (req, res, next) => {
        mysql.query(`SELECT armor.id AS id, name, defense_physical, defense_elemental, resistance, poise, durability,
                    weight, armor_slots.slot_name AS armor_slot, notes, picture FROM cms.armor
                    INNER JOIN armor_slots ON armor.armor_slot = armor_slots.id
                    ORDER BY armor.id`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:67)`);
                res.render('admin/admin_select_armor', {
                    'title': 'admin',
                    'db': 'Armor',
                    'results': results
                });
            });
    });

    // List Rings
    app.get('/admin/rings', (req, res, next) => {
        mysql.query(`SELECT * FROM rings`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:83)`);
                res.render('admin/admin_select_rings', {
                    'title': 'admin',
                    'db': 'Rings',
                    'results': results
                });
            });
    });

    // List Spells
    app.get('/admin/spells', (req, res, next) => {
        mysql.query(`SELECT spells.id, spells.name AS name, effect, uses, slots,
                    spell_types.name AS spell_type, faith_need, int_need, notes, picture
                    FROM cms.spells
                    INNER JOIN spell_types ON spells.spell_type = spell_types.id`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:96)`);
                res.render('admin/admin_select_spells', {
                    'title': 'admin',
                    'db': 'Spells',
                    'results': results
                });
            });
    });

    // List Users
    app.get('/admin/users', (req, res, next) => {
        mysql.query(`SELECT users.id, users.username, users.password, users.picture, rank.name AS rank FROM users
        INNER JOIN cms.rank ON users.rank_id = rank.id`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:112)`);
                res.render('admin/admin_select_users', {
                    'title': 'admin',
                    'db': 'Users',
                    'results': results
                });
            });
    });

    // List Menus
    app.get('/admin/menus', (req, res, next) => {
        mysql.query(`SELECT * FROM cms.menu ORDER BY position`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:126)`);
                res.render('admin/admin_select_menu', {
                    'title': 'admin',
                    'db': 'Menus',
                    'results': results
                });
            });
    });
};