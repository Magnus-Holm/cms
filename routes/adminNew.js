const mysql = require('../config/mysql.js')();
const bcrypt = require('bcryptjs');
const fs = require('fs');

module.exports = function (app) {

    // Create new weapon
    app.get('/admin/weapon/new', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:8)`);
                mysql.query(`SELECT id, name FROM weapon_type`,
                    function (err, weapon_type) {
                        if (err) return next(`${err} at db.query (${__filename}:11)`);
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
                if (err) return next(`${err} at db.query (${__filename}:25)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/admin/weapons');
                    });
                });
            });
    });

    // Create new shield
    app.get('/admin/shield/new', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:46)`);
                mysql.query(`SELECT id, name FROM shield_size`,
                    function (err, shield_size) {
                        if (err) return next(`${err} at db.query (${__filename}:49)`);
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
                if (err) return next(`${err} at db.query (${__filename}:63)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/admin/shields');
                    });
                });

            });
    });

    // Create new spell tool
    app.get('/admin/spell_tool/new', (req, res, next) => {
        mysql.query(`SELECT * FROM weapons`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:84)`);
                mysql.query(`SELECT id, name FROM spell_tool`,
                    function (err, spell_tool) {
                        if (err) return next(`${err} at db.query (${__filename}:89)`);
                        res.render('admin/admin_new_spell_tool', {
                            'title': 'admin',
                            'db': 'New Weapon',
                            result: result[0],
                            spell_tool: spell_tool
                        });
                    });
            });
    });

    app.post('/admin/spell_tool/new', (req, res, next) => {
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
                if (err) return next(`${err} at db.query (${__filename}:101)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/admin/spell_tools');
                    });
                });
            });
    });

    // Create new armor
    app.get('/admin/armor/new', (req, res, next) => {
        mysql.query(`SELECT * FROM armor`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:120)`);
                mysql.query(`SELECT id, slot_name FROM armor_slots`,
                    function (err, armor_slots) {
                        if (err) return next(`${err} at db.query (${__filename}:123)`);
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
                if (err) return next(`${err} at db.query (${__filename}:137)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/admin/armor');
                    });
                });
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
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `ring/${editFilename}`
        mysql.query(`INSERT INTO rings 
                    SET rings.name = ?, rings.effect = ?, rings.picture = '${picturePath}'`,
            [req.fields.name, req.fields.effect], (err, results) => {
                if (err) return next(`${err} at db.query (${__filename}:159)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/admin/rings');
                    });
                });
            });
    });

    // Create new spell
    app.get('/admin/spell/new', (req, res, next) => {
        mysql.query(`SELECT * FROM spells`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:169)`);
                mysql.query(`SELECT id, name FROM spell_types`,
                    function (err, spell_types) {
                        if (err) return next(`${err} at db.query (${__filename}:172)`);
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
                if (err) return next(`${err} at db.query (${__filename}:186)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/admin/spells');
                    });
                });
            });
    });

    // Create new page
    app.get('/admin/page/new', (req, res, next) => {
        res.render('admin/admin_new_page', {
            'title': 'admin',
            'db': 'New Page',
        });
    });

    app.post('/admin/page/new', (req, res, next) => {
        mysql.query(`INSERT INTO pages 
                    SET pages.title = ?, pages.content = ?`,
            [req.fields.title, req.fields.content], (err, results) => {
                if (err) return next(`${err} at db.query (${__filename}:159)`);
                res.redirect('/admin/pages');
            });
    });

    // Create new user
    app.get('/admin/user/new', (req, res, next) => {
        mysql.query(`SELECT * FROM users`,
            function (err, result) {
                if (err) return next(`${err} at db.query (${__filename}:201)`);
                mysql.query(`SELECT id, name FROM rank`,
                    function (err, rank) {
                        if (err) return next(`${err} at db.query (${__filename}:204)`);
                        res.render('admin/admin_new_user', {
                            'title': 'admin',
                            'db': 'New User',
                            result: result[0],
                            rank: rank
                        });
                    });
            });
    });

    app.post('/admin/user/new', (req, res, next) => {
        const editFilename = `${Date.now()}_${req.files.picture.name}`;
        let picturePath = `users/${editFilename}`
        let hash_pass = bcrypt.hashSync(`${req.fields.password}`, 10);
        mysql.query(`INSERT INTO users SET 
                    username = ?, password = '${hash_pass}', rank_id = ?, users.picture = '${picturePath}'`,
            [req.fields.username, req.fields.rank], (err, results) => {
                if (err) return next(`${err} at db.query (${__filename}:219)`);
                fs.readFile(req.files.picture.path, (err, data) => {
                    if (err) return next(`${err} at fs.readFile (${__filename}:59)`);
                    fs.writeFile(`./public/images/${picturePath}`, data, err => {
                        if (err) return next(`${err} at fs.writeFile (${__filename}:61)`);
                        res.redirect('/admin/users');
                    });
                });
            });
    });
};