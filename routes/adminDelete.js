const mysql = require('../config/mysql.js')();

module.exports = function (app) {

    // app.get('/admin/klasser/delete/:id', (req, res) => {
    //     mysql.query(`SELECT * FROM classes
    //                 WHERE classes.id = ?`,
    //         [req.params.id],
    //         function (err, results) {
    //             if (err) res.send(err);
    //             res.render('admin/admin_delete', {
    //                 'title': 'admin',
    //                 'db': 'Klasser',
    //                 'results': results[0]
    //             });
    //         });
    // });

    // app.delete('/admin/klasser/delete/:id', (req, res) => {
    //     mysql.query(`DELETE FROM classes
    //         WHERE classes.id = ?`,
    //         [req.params.id],
    //         function (err, results) {
    //             if (err) return res.send(err);
    //             res.status(200);
    //             res.end();
    //         });
    // });
};