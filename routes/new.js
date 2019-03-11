const mysql = require('../config/mysql.js')();
const bcrypt = require('bcryptjs');
const fs = require('fs');

module.exports = function (app) {
    // Create new weapon
    app.get('/new', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        res.render('create_new', {
            'title': 'Create somethin new',
            session: req.session.user
        });
    });

    app.get('/new/weapon', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at mysql.query (${__filename}:8)`);
                mysql.query(`SELECT id, name FROM weapon_type`,
                    function (err, weapon_type) {
                        if (err) return next(`${err} at mysql.query (${__filename}:11)`);
                        res.render('new_weapon', {
                            'title': 'New Weapon',
                            result: result[0],
                            weapon_type: weapon_type,
                            session: req.session.user
                        });
                    });
            });
    });

    app.post('/new/weapon', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `weapons/${editFilename}`
        mysql.query(`INSERT INTO weapons SET weapons.name = ?, 
                    weapons.damage = ?, weapons.aux_effect = ?, 
                    weapons.damage_reduction = ?, weapons.critical = ?, 
                    weapons.durability = ?, weapons.range = ?,
                    weapons.stability = ?, weapons.weight = ?,
                    weapons.stats_req = ?, weapons.stats_scale = ?,
                    weapons.weapon_type = ?, weapons.notes = ?, weapons.picture = '${picturePath}'`,
            [req.fields.name, req.fields.damage, req.fields.aux,
                req.fields.reduction, req.fields.critical,
                req.fields.durability, req.fields.range,
                req.fields.stability, req.fields.weight,
                req.fields.requirements, req.fields.scaling,
                req.fields.type, req.fields.notes
            ], (err, results) => {
                if (err) return next(`${err} at mysql.query (${__filename}:25)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/weapons');
                    });
                });
            });
    });

    // Create new shield
    app.get('/new/shield', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at mysql.query (${__filename}:46)`);
                mysql.query(`SELECT id, name FROM shield_size`,
                    function (err, shield_size) {
                        if (err) return next(`${err} at mysql.query (${__filename}:49)`);
                        res.render('new_shield', {
                            'title': 'New Shield',
                            result: result[0],
                            shield_size: shield_size,
                            session: req.session.user
                        });
                    });
            });
    });

    app.post('/new/shield', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `weapons/${editFilename}`
        mysql.query(`INSERT INTO weapons SET 
                    weapons.name = ?, weapons.damage = ?, 
                    weapons.aux_effect = ?, weapons.damage_reduction = ?, 
                    weapons.critical = ?, weapons.durability = ?,
                    weapons.stability = ?, weapons.weight = ?,
                    weapons.stats_req = ?, weapons.stats_scale = ?,
                    weapons.shield_size = ?, weapons.notes = ?, weapons.picture = '${picturePath}' `,
            [req.fields.name, req.fields.damage,
                req.fields.aux, req.fields.reduction,
                req.fields.critical, req.fields.durability,
                req.fields.stability, req.fields.weight,
                req.fields.requirements, req.fields.scaling,
                req.fields.type, req.fields.notes
            ], (err, results) => {
                if (err) return next(`${err} at mysql.query (${__filename}:63)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/shields');
                    });
                });

            });
    });

    // Create new spell tool
    app.get('/new/spell_tool', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at mysql.query (${__filename}:84)`);
                mysql.query(`SELECT id, name FROM spell_tool`,
                    function (err, spell_tool) {
                        if (err) return next(`${err} at mysql.query (${__filename}:89)`);
                        res.render('new_spell_tool', {
                            'title': 'New Weapon',
                            result: result[0],
                            spell_tool: spell_tool,
                            session: req.session.user
                        });
                    });
            });
    });

    app.post('/new/spell_tool', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `weapons/${editFilename}`
        mysql.query(`INSERT INTO weapons SET 
        weapons.name = ?, weapons.mag_adjust = ?, weapons.damage = ?, 
        weapons.aux_effect = ?, weapons.damage_reduction = ?, weapons.critical = ?, 
        weapons.durability = ?, weapons.stability = ?, weapons.weight = ?, 
        weapons.stats_req = ?, weapons.stats_scale = ?, weapons.spell_tool_type = ?, 
        weapons.notes = ?, weapons.picture = '${picturePath}'`,
            [req.fields.name, req.fields.magic, req.fields.damage,
                req.fields.aux, req.fields.reduction, req.fields.critical,
                req.fields.durability, req.fields.stability, req.fields.weight,
                req.fields.requirements, req.fields.scaling, req.fields.type,
                req.fields.notes
            ], (err, results) => {
                if (err) return next(`${err} at mysql.query (${__filename}:101)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/spell_tools');
                    });
                });
            });
    });

    // Create new armor
    app.get('/new/armor', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        mysql.query(`SELECT * FROM armor`,
            function (err, result) {
                if (err) return next(`${err} at mysql.query (${__filename}:120)`);
                mysql.query(`SELECT id, slot_name FROM armor_slots`,
                    function (err, armor_slots) {
                        if (err) return next(`${err} at mysql.query (${__filename}:123)`);
                        res.render('new_armor', {
                            'title': 'New Armor',
                            result: result[0],
                            armor_slots: armor_slots,
                            session: req.session.user
                        });
                    });
            });
    });

    app.post('/new/armor', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `armors/${editFilename}`

        mysql.query(`INSERT INTO armor SET 
                    armor.name = ?, armor.defense_physical = ?, armor.defense_elemental = ?, 
                    armor.resistance = ?, armor.poise = ?, armor.durability = ?, 
                    armor.weight = ?, armor.armor_slot = ?, armor.notes = ?, armor.picture = '${picturePath}'`,
            [req.fields.name, req.fields.physical, req.fields.elemental,
                req.fields.resistance, req.fields.poise, req.fields.durability,
                req.fields.weight, req.fields.type, req.fields.notes
            ], (err, results) => {
                if (err) return next(`${err} at mysql.query (${__filename}:137)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/armor');
                    });
                });
            });
    });

    // Create new ring
    app.get('/new/ring', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        res.render('new_ring', {
            'title': 'New Ring',
            session: req.session.user
        });
    });

    app.post('/new/ring', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `ring/${editFilename}`
        mysql.query(`INSERT INTO rings 
                    SET rings.name = ?, rings.effect = ?, rings.picture = '${picturePath}'`,
            [req.fields.name, req.fields.effect], (err, results) => {
                if (err) return next(`${err} at mysql.query (${__filename}:159)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/rings');
                    });
                });
            });
    });

    // Create new spell
    app.get('/new/spell', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        mysql.query(`SELECT * FROM spells`,
            function (err, result) {
                if (err) return next(`${err} at mysql.query (${__filename}:169)`);
                mysql.query(`SELECT id, name FROM spell_types`,
                    function (err, spell_types) {
                        if (err) return next(`${err} at mysql.query (${__filename}:172)`);
                        res.render('new_spell', {
                            'title': 'New Spell',
                            result: result[0],
                            spell_types: spell_types,
                            session: req.session.user
                        });
                    });
            });
    });

    app.post('/new/spell', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `spells/${editFilename}`

        mysql.query(`INSERT INTO spells SET 
                    spells.name = ?, spells.effect = ?, spells.uses = ?, 
                    spells.slots = ?, spells.faith_need = ?, spells.int_need = ?, 
                    spells.spell_type = ?, spells.notes = ?, spells.picture = '${picturePath}'`,
            [req.fields.name, req.fields.effect, req.fields.uses,
                req.fields.slots, req.fields.faith, req.fields.intelligence,
                req.fields.type, req.fields.notes
            ], (err, results) => {
                if (err) return next(`${err} at mysql.query (${__filename}:186)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/spells');
                    });
                });
            });
    });

    // Create new page
    app.get('/new/blog', (req, res, next) => {
        if (!req.session.user) {
            res.redirect('/login');
            return;
        }
        res.render('new_page', {
            'title': 'New Page',
            session: req.session.user
        });
    });

    app.post('/new/blog', (req, res, next) => {
        mysql.query(`INSERT INTO pages 
                    SET pages.title = ?, pages.content = ?`,
            [req.fields.title, req.fields.content], (err, results) => {
                if (err) return next(`${err} at mysql.query (${__filename}:159)`);
                res.redirect('/blog');
            });
    });
};