var mysql = require('mysql');
var pool = mysql.createPool({
	connectionLimit : 10,
	host		: 'classmysql.engr.oregonstate.edu',
	user		: 'cs340_peterkom',
	password	: '0179',
	database	: 'cs340_peterkom'
});
module.exports.pool=pool;
