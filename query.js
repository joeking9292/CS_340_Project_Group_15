var getConnection = require('./database');
getConnection(function (err, con) {
  if(err) { /* handle your error here */ }
  var userQuery = 'select * from user';
  console.log("con: " + con); //displays undefined
  con.query(userQuery,function(err,user){
  con.release();
});