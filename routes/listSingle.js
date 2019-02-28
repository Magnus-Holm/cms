const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    // List Weapons
    app.get('/weapons/:id', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, damage, aux_effect, damage_reduction, critical, 
                    durability, weapons.range AS bow_range, stability, weight,
                    stats_req, stats_scale, weapon_type.name AS weapon_type, notes, picture
                    FROM weapons
                    INNER JOIN weapon_type ON weapons.weapon_type = weapon_type.id
                    WHERE weapons.id = ?`, [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:13)`);
                res.render('select_weapon_single', {
                    'title': results[0].name,
                    'result': results[0],
                    session: req.session.user
                });
            });
    });

    // List Spell Tools
    app.get('/spell_tools/:id', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, mag_adjust, damage, aux_effect, damage_reduction, critical, durability, stability, weight,
                    stats_req, stats_scale, spell_tool.name AS spell_tool, notes, picture
                    FROM weapons
                    INNER JOIN spell_tool ON weapons.spell_tool_type = spell_tool.id
                    WHERE weapons.id = ?`, [req.params.id], function (err, results) {
            if (err) return next(`${err} at db.query (${__filename}:31)`);
            res.render('select_spell_tool_single', {
                'title': 'Spell Tools',
                'result': results[0],
                session: req.session.user
            });
        });
    });

    // List Shields
    app.get('/shields/:id', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, damage, aux_effect, damage_reduction, critical, 
                    durability, stability, weight,
                    stats_req, stats_scale, shield_size.name AS shield_size, notes, picture
                    FROM weapons
                    INNER JOIN shield_size ON weapons.shield_size = shield_size.id
                    WHERE weapons.id = ?
                    ORDER BY weapons.id`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:48)`);
                res.render('select_shield_single', {
                    'title': 'Shields',
                    'result': results[0],
                    session: req.session.user
                });
            });
    });

    // List Armors
    app.get('/armor/:id', (req, res, next) => {
        mysql.query(`SELECT armor.id AS id, name, defense_physical, defense_elemental, resistance, poise, durability,
                    weight, armor_slots.slot_name AS armor_slot, notes, picture FROM cms.armor
                    INNER JOIN armor_slots ON armor.armor_slot = armor_slots.id
                    WHERE armor.id = ?
                    ORDER BY armor.id`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:66)`);
                res.render('select_armor_single', {
                    'title': 'Armor',
                    'result': results[0],
                    session: req.session.user
                });
            });
    });

    // List Rings
    app.get('/rings/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM rings
                    WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:82)`);
                res.render('select_ring_single', {
                    'title': 'Rings',
                    'result': results[0],
                    session: req.session.user
                });
            });
    });

    // List Pages
    app.get('/blog/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM pages
                    WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:82)`);
                res.render('select_page_single', {
                    'title': 'Pages',
                    'result': results[0],
                    session: req.session.user
                });
            });
    });

    // List Spells
    app.get('/spells/:id', (req, res, next) => {
        mysql.query(`SELECT spells.id, spells.name AS name, effect, uses, slots,
                    spell_types.name AS spell_type, faith_need, int_need, notes, picture
                    FROM cms.spells
                    INNER JOIN spell_types ON spells.spell_type = spell_types.id
                    WHERE spells.id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:95)`);
                res.render('select_spell_single', {
                    'title': 'Spells',
                    'result': results[0],
                    session: req.session.user
                });
            });
    });
};