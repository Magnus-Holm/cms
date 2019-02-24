const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    // Update Weapons
    app.get('/admin/weapon/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons WHERE id = ?`,
            [req.params.id],
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM weapon_type`, [req.params.id],
                    function (err, weapon_type) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_edit_weapon', {
                            'title': 'admin',
                            'db': result[0].name,
                            result: result[0],
                            weapon_type: weapon_type
                        });
                    });
            });
    });

    app.patch('/admin/weapon/edit/:id', (req, res, next) => {
        mysql.query(`UPDATE weapons
        SET weapons.name = ?, weapons.damage = ?, weapons.aux_effect = ?, weapons.damage_reduction = ?,
        weapons.critical = ?, weapons.durability = ?, weapons.range = ?, weapons.stability = ?,
        weapons.weight = ?, weapons.stats_req = ?, weapons.stats_scale = ?, weapons.weapon_type = ?, weapons.notes = ?
        WHERE weapons.id = ?`,
            [req.body.name, req.body.damage, req.body.aux, req.body.reduction, req.body.critical,
                req.body.durability, req.body.range, req.body.stability, req.body.weight,
                req.body.requirements, req.body.scaling, req.body.type,
                req.body.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:23)`);
                res.status(200);
                res.end();
            }
        );
    });


    // Update Spell Tools
    app.get('/admin/spell_tools/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons WHERE id = ?`,
            [req.params.id],
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM spell_tool`, [req.params.id],
                    function (err, spell_tool) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_edit_spell_tools', {
                            'title': 'admin',
                            'db': result[0].name,
                            result: result[0],
                            spell_tool: spell_tool
                        });
                    });
            });
    });

    app.patch('/admin/spell_tools/edit/:id', (req, res, next) => {
        mysql.query(`UPDATE weapons
        SET weapons.name = ?, weapons.mag_adjust = ?, weapons.damage = ?, weapons.aux_effect = ?, weapons.damage_reduction = ?,
        weapons.critical = ?, weapons.durability = ?, weapons.stability = ?,
        weapons.weight = ?, weapons.stats_req = ?, weapons.stats_scale = ?, weapons.spell_tool_type = ?, weapons.notes = ?
        WHERE weapons.id = ?`,
            [req.body.name, req.body.magic, req.body.damage, req.body.aux, req.body.reduction, req.body.critical,
                req.body.durability, req.body.stability, req.body.weight,
                req.body.requirements, req.body.scaling, req.body.type,
                req.body.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:23)`);
                res.status(200);
                res.end();
            }
        );
    });


    // Update Shield
    app.get('/admin/shield/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons WHERE id = ?`,
            [req.params.id],
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM weapon_type`, [req.params.id],
                    function (err, shield_size) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_edit_shield', {
                            'title': 'admin',
                            'db': result[0].name,
                            result: result[0],
                            shield_size: shield_size
                        });
                    });
            });
    });

    app.patch('/admin/shield/edit/:id', (req, res, next) => {
        mysql.query(`UPDATE weapons
        SET weapons.name = ?, weapons.damage = ?, weapons.aux_effect = ?, weapons.damage_reduction = ?,
        weapons.critical = ?, weapons.durability = ?, weapons.stability = ?,
        weapons.weight = ?, weapons.stats_req = ?, weapons.stats_scale = ?, weapons.shield_size = ?, weapons.notes = ?
        WHERE weapons.id = ?`,
            [req.body.name, req.body.damage, req.body.aux, req.body.reduction, req.body.critical,
                req.body.durability, req.body.stability, req.body.weight,
                req.body.requirements, req.body.scaling, req.body.type,
                req.body.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:23)`);
                res.status(200);
                res.end();
            }
        );
    });

    // Update Spells
    app.get('/admin/spell/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM spells WHERE id = ?`,
            [req.params.id],
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM spell_types`, [req.params.id],
                    function (err, spell_types) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_edit_spell', {
                            'title': 'admin',
                            'db': result[0].name,
                            result: result[0],
                            spell_types: spell_types
                        });
                    });
            });
    });

    app.patch('/admin/spell/edit/:id', (req, res, next) => {
        mysql.query(`UPDATE spells
        SET spells.name = ?, spells.effect = ?, spells.uses = ?, spells.slots = ?,
        spells.faith_need = ?, spells.int_need = ?, spells.spell_type = ?, spells.notes = ?
        WHERE spells.id = ?`,
            [req.body.name, req.body.effect, req.body.uses, req.body.slots, req.body.faith,
                req.body.intelligence, req.body.type, req.body.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:23)`);
                res.status(200);
                res.end();
            }
        );
    });

    // Update Armor
    app.get('/admin/armor/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM armor WHERE id = ?`,
            [req.params.id],
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, slot_name FROM armor_slots`, [req.params.id],
                    function (err, armor_slot) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_edit_armor', {
                            'title': 'admin',
                            'db': result[0].name,
                            result: result[0],
                            armor_slot: armor_slot
                        });
                    });
            });
    });

    app.patch('/admin/armor/edit/:id', (req, res, next) => {
        mysql.query(`UPDATE armor
        SET armor.name = ?, armor.defense_physical = ?, armor.defense_elemental = ?, armor.resistance = ?,
        armor.poise = ?, armor.durability = ?, armor.weight = ?, armor.armor_slot = ?, armor.notes = ?
        WHERE armor.id = ?`,
            [req.body.name, req.body.physical, req.body.elemental, req.body.resistance, req.body.poise,
                req.body.durability, req.body.weight, req.body.type, req.body.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:23)`);
                res.status(200);
                res.end();
            }
        );
    });

    // Update Rings
    app.get('/admin/rings/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM rings WHERE id = ?`,
            [req.params.id],
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                res.render('admin/admin_edit_ring', {
                    'title': 'admin',
                    'db': result[0].name,
                    result: result[0],
                });
            });
    });

    app.patch('/admin/rings/edit/:id', (req, res, next) => {
        mysql.query(`UPDATE rings
        SET rings.name = ?, rings.effect = ? WHERE rings.id = ?`,
            [req.body.name, req.body.effect, req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:23)`);
                res.status(200);
                res.end();
            }
        );
    });

    // Update Users
    app.get('/admin/user/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM users WHERE id = ?`,
            [req.params.id],
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:5)`);
                mysql.query(`SELECT id, name FROM rank`, [req.params.id],
                    function (err, rank) {
                        if (err) return next(`${err} at db.query (${__filename}:8)`);
                        res.render('admin/admin_edit_user', {
                            'title': 'admin',
                            'db': result[0].name,
                            result: result[0],
                            rank: rank
                        });
                    });
            });
    });

    app.patch('/admin/user/edit/:id', (req, res, next) => {
        let hash_pass = bcrypt.hashSync(`${req.body.password}`, 10);
        mysql.query(`UPDATE users
        SET users.username = ?, users.password = ${hash_pass}, users.rank_id = ? WHERE users.id = ?`,
            [req.body.username, req.body.rank_id, req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:23)`);
                res.status(200);
                res.end();
            }
        );
    });
};