const mysql = require('../config/mysql.js')();
const bcrypt = require('bcryptjs');

module.exports = function (app) {

    // Create new weapon
    app.get('/admin/weapon/new', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM weapon_type`,
                    function (err, weapon_type) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_new_weapon', {
                            'title': 'admin',
                            'db': 'New Weapon',
                            result: result[0],
                            weapon_type: weapon_type
                        });
                    });
            });
    });

    app.post('/admin/weapon/new', (req, res, next) => {
        mysql.query(`INSERT INTO weapons SET weapons.name = ?, 
                    weapons.damage = ?, weapons.aux_effect = ?, 
                    weapons.damage_reduction = ?, weapons.critical = ?, 
                    weapons.durability = ?, weapons.range = ?,
                    weapons.stability = ?, weapons.weight = ?,
                    weapons.stats_req = ?, weapons.stats_scale = ?,
                    weapons.weapon_type = ?, weapons.notes = ?`,
            [req.body.name, req.body.damage, req.body.aux,
                req.body.reduction, req.body.critical,
                req.body.durability, req.body.range,
                req.body.stability, req.body.weight,
                req.body.requirements, req.body.scaling,
                req.body.type, req.body.notes
            ], (err, results) => {
                if (err) return next(err);
                res.redirect('/admin/weapons');
            });
    });

    // Create new shield
    app.get('/admin/shield/new', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM shield_size`,
                    function (err, shield_size) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_new_shield', {
                            'title': 'admin',
                            'db': 'New Shield',
                            result: result[0],
                            shield_size: shield_size
                        });
                    });
            });
    });

    app.post('/admin/shield/new', (req, res, next) => {
        mysql.query(`INSERT INTO weapons SET 
                    weapons.name = ?, weapons.damage = ?, 
                    weapons.aux_effect = ?, weapons.damage_reduction = ?, 
                    weapons.critical = ?, weapons.durability = ?,
                    weapons.stability = ?, weapons.weight = ?,
                    weapons.stats_req = ?, weapons.stats_scale = ?,
                    weapons.shield_size = ?, weapons.notes = ?`,
            [req.body.name, req.body.damage,
                req.body.aux, req.body.reduction,
                req.body.critical, req.body.durability,
                req.body.stability, req.body.weight,
                req.body.requirements, req.body.scaling,
                req.body.type, req.body.notes
            ], (err, results) => {
                if (err) return next(err);
                res.redirect('/admin/shields');
            });
    });

    // Create new spell tool
    app.get('/admin/spell_tool/new', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM spell_tool_type`,
                    function (err, spell_tool_type) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_new_spell_tool', {
                            'title': 'admin',
                            'db': 'New Weapon',
                            result: result[0],
                            spell_tool_type: spell_tool_type
                        });
                    });
            });
    });

    app.post('/admin/spell_tool/new', (req, res, next) => {
        mysql.query(`INSERT INTO weapons SET 
        weapons.name = ?, weapons.mag_adjust = ?, weapons.damage = ?, 
        weapons.aux_effect = ?, weapons.damage_reduction = ?, weapons.critical = ?, 
        weapons.durability = ?, weapons.stability = ?, weapons.weight = ?, 
        weapons.stats_req = ?, weapons.stats_scale = ?, weapons.spell_tool_type = ?, 
        weapons.notes = ?`,
            [req.body.name, req.body.magic, req.body.damage,
                req.body.aux, req.body.reduction, req.body.critical,
                req.body.durability, req.body.stability, req.body.weight,
                req.body.requirements, req.body.scaling, req.body.type,
                req.body.notes
            ], (err, results) => {
                if (err) return next(err);
                res.redirect('/admin/spell_tools');
            });
    });

    // Create new armor
    app.get('/admin/armor/new', (req, res, next) => {
        mysql.query(`SELECT * FROM armor`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, slot_name FROM armor_slots`,
                    function (err, armor_slots) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_new_armor', {
                            'title': 'admin',
                            'db': 'New Armor',
                            result: result[0],
                            armor_slots: armor_slots
                        });
                    });
            });
    });

    app.post('/admin/armor/new', (req, res, next) => {
        mysql.query(`INSERT INTO armor SET 
                    armor.name = ?, armor.defense_physical = ?, armor.defense_elemental = ?, 
                    armor.resistance = ?, armor.poise = ?, armor.durability = ?, 
                    armor.weight = ?, armor.armor_slot = ?, armor.notes = ?`,
            [req.body.name, req.body.physical, req.body.elemental,
                req.body.resistance, req.body.poise, req.body.durability,
                req.body.weight, req.body.type, req.body.notes
            ], (err, results) => {
                if (err) return next(err);
                res.redirect('/admin/armor');
            });
    });

    // Create new ring
    app.get('/admin/ring/new', (req, res, next) => {
        res.render('admin/admin_new_ring', {
            'title': 'admin',
            'db': 'New Ring',
        });
    });

    app.post('/admin/ring/new', (req, res, next) => {
        mysql.query(`INSERT INTO rings 
                    SET rings.name = ?, rings.effect = ?`,
            [req.body.name, req.body.effect], (err, results) => {
                if (err) return next(err);
                res.redirect('/admin/rings');
            });
    });

    // Create new spell
    app.get('/admin/spell/new', (req, res, next) => {
        mysql.query(`SELECT * FROM spells`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM spell_types`,
                    function (err, spell_types) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_new_spell', {
                            'title': 'admin',
                            'db': 'New Spell',
                            result: result[0],
                            spell_types: spell_types
                        });
                    });
            });
    });

    app.post('/admin/spell/new', (req, res, next) => {
        mysql.query(`INSERT INTO spells SET 
                    spells.name = ?, spells.effect = ?, spells.uses = ?, 
                    spells.slots = ?, spells.faith_need = ?, spells.int_need = ?, 
                    spells.spell_type = ?, spells.notes = ?`,
            [req.body.name, req.body.effect, req.body.uses,
                req.body.slots, req.body.faith, req.body.intelligence,
                req.body.type, req.body.notes
            ], (err, results) => {
                if (err) return next(err);
                res.redirect('/admin/spells');
            });
    });

    // Create new user
    app.get('/admin/user/new', (req, res, next) => {
        mysql.query(`SELECT * FROM users`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM rank`,
                    function (err, rank) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_new_user', {
                            'title': 'admin',
                            'db': 'New Spell',
                            result: result[0],
                            rank: rank
                        });
                    });
            });
    });

    app.post('/admin/user/new', (req, res, next) => {
        let hash_pass = bcrypt.hashSync(`${req.body.password}`, 10);
        mysql.query(`INSERT INTO users SET 
                    users.username = ?, users.password = ${hash_pass}, users.rank_id = ?`,
            [req.body.username, req.body.rank], (err, results) => {
                if (err) return next(err);
                res.redirect('/admin/users');
            });
    });
};