module.exports = function (app) {
    app.get('/logout', (req, res, next) => {
        req.session.destroy();
        res.redirect('/');
    });
}