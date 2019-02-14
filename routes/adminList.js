const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    app.get('/admin/weapons', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, damage, aux_effect, damage_reduction, critical, 
                    durability, weapons.range AS bow_range, stability, weight,
                    stats_req, stats_scale, weapon_type.name AS weapon_type, notes, picture
                    FROM weapons
                    INNER JOIN weapon_type ON weapons.weapon_type = weapon_type.id
                    WHERE weapon_type IS NOT NULL`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:6)`);
                res.render('admin/admin_select_weapons', {
                    'title': 'admin',
                    'db': 'Weapons',
                    'results': results
                });
            });
    });

    app.get('/admin/spell_tools', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, mag_adjust, damage, aux_effect, damage_reduction, critical, durability, stability, weight,
                    stats_req, stats_scale, spell_tool.name AS spell_tool, notes, picture
                    FROM weapons
                    INNER JOIN spell_tool ON weapons.spell_tool_type = spell_tool.id
                    WHERE spell_tool_type IS NOT NULL`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:23)`);
                res.render('admin/admin_select_spell_tools', {
                    'title': 'admin',
                    'db': 'Spell Tools',
                    'results': results
                });
            });
    });
    app.get('/admin/shields', (req, res, next) => {
        mysql.query(`SELECT weapons.id AS id, weapons.name AS name, damage, aux_effect, damage_reduction, critical, 
                    durability, stability, weight,
                    stats_req, stats_scale, shield_size.name AS shield_size, notes, picture
                    FROM weapons
                    INNER JOIN shield_size ON weapons.shield_size = shield_size.id
                    WHERE shield_size IS NOT NULL`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:38)`);
                res.render('admin/admin_select_shields', {
                    'title': 'admin',
                    'db': 'Shields',
                    'results': results
                });
            });
    });
    app.get('/admin/armor', (req, res, next) => {
        mysql.query(`SELECT armor.id AS id, name, defense_physical, defense_elemental, resistance, poise, durability,
                    weight, armor_slots.slot_name AS armor_slot, notes, picture FROM cms.armor
                    INNER JOIN armor_slots ON armor.armor_slot = armor_slots.id
                    ORDER BY armor.id`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:54)`);
                res.render('admin/admin_select_armor', {
                    'title': 'admin',
                    'db': 'Armor',
                    'results': results
                });
            });
    });
    app.get('/admin/rings', (req, res, next) => {
        mysql.query(`SELECT * FROM rings`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:68)`);
                res.render('admin/admin_select_rings', {
                    'title': 'admin',
                    'db': 'Rings',
                    'results': results
                });
            });
    });
    app.get('/admin/spells', (req, res, next) => {
        mysql.query(`SELECT spells.id, spells.name AS name, effect, uses, slots,
                    spell_types.name AS spell_type, faith_need, int_need, notes, picture
                    FROM cms.spells
                    INNER JOIN spell_types ON spells.spell_type = spell_types.id`,
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:79)`);
                res.render('admin/admin_select_spells', {
                    'title': 'admin',
                    'db': 'Spells',
                    'results': results
                });
            });
    });

};