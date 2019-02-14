const app = require('express')();
const port = process.env.PORT || 3000;
const debug = require('debug')('Kodebase');
// const bcrypt = require('bcryptjs');

require('./config/index.js')(app);
require('./routes/index.js')(app);

// console.log(bcrypt.hashSync('1234', 10));


app.listen(port, () => {
    debug(`is running on http://${process.env.SITE_HOST}:${port}`);
});