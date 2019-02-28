const mysql = require('../config/mysql.js')();
const bcrypt = require('bcryptjs');
const fs = require('fs');

module.exports = function (app) {

    // Update Weapons
    app.get('/admin/weapon/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:7)`);
                mysql.query(`SELECT id, name FROM weapon_type`, [req.params.id],
                    function (err, weapon_type) {
                        if (err) return next(`${err} at db.query (${__filename}:11)`);
                        res.render('admin/admin_edit_weapon', {
                            'title': 'admin',
                            'db': results[0].name,
                            result: results[0],
                            weapon_type: weapon_type
                        });
                    });
            });
    });

    app.patch('/admin/weapon/edit/:id', (req, res, next) => {
        console.log(req.fields.picture);
        
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `weapons/${editFilename}`
        mysql.query(`UPDATE weapons
                    SET weapons.name = ?, weapons.damage = ?, weapons.aux_effect = ?, weapons.damage_reduction = ?,
                    weapons.critical = ?, weapons.durability = ?, weapons.range = ?, weapons.stability = ?,
                    weapons.weight = ?, weapons.stats_req = ?, weapons.stats_scale = ?, weapons.weapon_type = ?,
                    weapons.notes = ?, weapons.picture = '${picturePath}'
                    WHERE weapons.id = ?`,
            [req.fields.name, req.fields.damage, req.fields.aux, req.fields.reduction, req.fields.critical,
                req.fields.durability, req.fields.range, req.fields.stability, req.fields.weight,
                req.fields.requirements, req.fields.scaling, req.fields.type,
                req.fields.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:25)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.status(200);
                        res.end();
                    });
                });

            }
        );
    });


    // Update Spell Tools
    app.get('/admin/spell_tool/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:46)`);
                mysql.query(`SELECT id, name FROM spell_tool`, [req.params.id],
                    function (err, spell_tool) {
                        if (err) return next(`${err} at db.query (${__filename}:50)`);
                        res.render('admin/admin_edit_spell_tool', {
                            'title': 'admin',
                            'db': results[0].name,
                            result: results[0],
                            spell_tool: spell_tool
                        });
                    });
            });
    });

    app.patch('/admin/spell_tool/edit/:id', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `weapons/${editFilename}`
        mysql.query(`UPDATE weapons
        SET weapons.name = ?, weapons.mag_adjust = ?, weapons.damage = ?, weapons.aux_effect = ?, weapons.damage_reduction = ?,
        weapons.critical = ?, weapons.durability = ?, weapons.stability = ?,
        weapons.weight = ?, weapons.stats_req = ?, weapons.stats_scale = ?, weapons.spell_tool_type = ?, weapons.picture = '${picturePath}'
        WHERE weapons.id = ?`,
            [req.fields.name, req.fields.magic, req.fields.damage, req.fields.aux, req.fields.reduction, req.fields.critical,
                req.fields.durability, req.fields.stability, req.fields.weight,
                req.fields.requirements, req.fields.scaling, req.fields.type,
                req.fields.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:64)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.status(200);
                        res.end();
                    });
                });
            }
        );
    });


    // Update Shield
    app.get('/admin/shield/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:85)`);
                mysql.query(`SELECT id, name FROM shield_size`, [req.params.id],
                    function (err, shield_size) {
                        if (err) return next(`${err} at db.query (${__filename}:89)`);
                        res.render('admin/admin_edit_shield', {
                            'title': 'admin',
                            'db': results[0].name,
                            result: results[0],
                            shield_size: shield_size
                        });
                    });
            });
    });

    app.patch('/admin/shield/edit/:id', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `weapons/${editFilename}`
        mysql.query(`UPDATE weapons
        SET weapons.name = ?, weapons.damage = ?, weapons.aux_effect = ?, weapons.damage_reduction = ?,
        weapons.critical = ?, weapons.durability = ?, weapons.stability = ?,
        weapons.weight = ?, weapons.stats_req = ?, weapons.stats_scale = ?, weapons.shield_size = ?, weapons.notes = ?, weapons.picture = '${picturePath}'
        WHERE weapons.id = ?`,
            [req.fields.name, req.fields.damage, req.fields.aux, req.fields.reduction, req.fields.critical,
                req.fields.durability, req.fields.stability, req.fields.weight,
                req.fields.requirements, req.fields.scaling, req.fields.type,
                req.fields.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:103)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.status(200);
                        res.end();
                    });
                });
            }
        );
    });

    // Update Spells
    app.get('/admin/spell/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM spells WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:123)`);
                mysql.query(`SELECT id, name FROM spell_types`, [req.params.id],
                    function (err, spell_types) {
                        if (err) return next(`${err} at db.query (${__filename}:127)`);
                        res.render('admin/admin_edit_spell', {
                            'title': 'admin',
                            'db': results[0].name,
                            result: results[0],
                            spell_types: spell_types
                        });
                    });
            });
    });

    app.patch('/admin/spell/edit/:id', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `spells/${editFilename}`
        mysql.query(`UPDATE spells
        SET spells.name = ?, spells.effect = ?, spells.uses = ?, spells.slots = ?,
        spells.faith_need = ?, spells.int_need = ?, spells.spell_type = ?, spells.notes = ?, spells.picture = '${picturePath}'
        WHERE spells.id = ?`,
            [req.fields.name, req.fields.effect, req.fields.uses, req.fields.slots, req.fields.faith,
                req.fields.intelligence, req.fields.type, req.fields.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:141)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.status(200);
                        res.end();
                    });
                });
            }
        );
    });

    // Update Armor
    app.get('/admin/armor/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM armor WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:158)`);
                mysql.query(`SELECT id, slot_name FROM armor_slots`, [req.params.id],
                    function (err, armor_slot) {
                        if (err) return next(`${err} at db.query (${__filename}:162)`);
                        res.render('admin/admin_edit_armor', {
                            'title': 'admin',
                            'db': results[0].name,
                            result: results[0],
                            armor_slot: armor_slot
                        });
                    });
            });
    });

    app.patch('/admin/armor/edit/:id', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `armors/${editFilename}`
        mysql.query(`UPDATE armor
        SET armor.name = ?, armor.defense_physical = ?, armor.defense_elemental = ?, armor.resistance = ?,
        armor.poise = ?, armor.durability = ?, armor.weight = ?, armor.armor_slot = ?, armor.notes = ?, armor.picture = '${picturePath}'
        WHERE armor.id = ?`,
            [req.fields.name, req.fields.physical, req.fields.elemental, req.fields.resistance, req.fields.poise,
                req.fields.durability, req.fields.weight, req.fields.type, req.fields.note, req.params.id
            ],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:176)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.status(200);
                        res.end();
                    });
                });
            }
        );
    });

    // Update Rings
    app.get('/admin/ring/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM rings WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:193)`);
                res.render('admin/admin_edit_ring', {
                    'title': 'admin',
                    'db': results[0].name,
                    result: results[0],
                });
            });
    });

    app.patch('/admin/ring/edit/:id', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `rings/${editFilename}`
        mysql.query(`UPDATE rings
        SET rings.name = ?, rings.effect = ? WHERE rings.id = ?, rings.picture = '${picturePath}'`,
            [req.fields.name, req.fields.effect, req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:207)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.status(200);
                        res.end();
                    });
                });
            }
        );
    });

    // Update Users
    app.get('/admin/user/edit/:id', (req, res, next) => {
        mysql.query(`SELECT * FROM users WHERE id = ?`,
            [req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:219)`);
                mysql.query(`SELECT id, name FROM rank`, [req.params.id],
                    function (err, rank) {
                        if (err) return next(`${err} at db.query (${__filename}:223)`);
                        res.render('admin/admin_edit_user', {
                            'title': 'admin',
                            'db': results[0].username,
                            result: results[0],
                            rank: rank
                        });
                    });
            });
    });

    app.patch('/admin/user/edit/:id', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `users/${editFilename}`
        let hash_pass = bcrypt.hashSync(`${req.fields.password}`, 10);
        mysql.query(`UPDATE users
                    SET users.username = ?, users.password = '${hash_pass}', 
                    users.rank_id = ? WHERE users.id = ?, users.picture = '${picturePath}'`,
            [req.fields.username, req.fields.rank, req.params.id],
            function (err, results) {
                if (err) return next(`${err} at db.query (${__filename}:244)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.status(200);
                        res.end();
                    });
                });
            }
        );
    });
};