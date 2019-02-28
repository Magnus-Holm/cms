module.exports = function (app) {
    app.get('/', (req, res, next) => {
        res.render('page', {
            'title': 'Front page',
            'session': req.session.user
        });
    });
};