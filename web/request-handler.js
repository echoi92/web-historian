var path = require('path');
var archive = require('../helpers/archive-helpers');
var fs = require('fs');

// require more modules/folders here!

//set up the data storage for site.txt ;
//

archive.readListOfUrls();
archive.downloadUrls('www.cnn.com');

exports.handleRequest = function (req, res) {
  res.end(archive.paths.list);
};

