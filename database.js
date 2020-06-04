var mySQL = require('mysql');
var pool  = mySQL.createPool({
    host: config.host,
    user: config.user,
    password: config.password,
    database: config.database
});
var getConnection = function (cb) {
    pool.getConnection(function (err, connection) {
        //if(err) throw err;
        //pass the error to the cb instead of throwing it
        if(err) {
          return cb(err);
        }
        cb(null, connection);
    });
};
module.exports = getConnection;