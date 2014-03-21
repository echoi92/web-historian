var fs = require('fs');
var path = require('path');
var _ = require('underscore');
var httpRequest = require('http-request');
/*
 * You will need to reuse the same paths many times over in the course of this sprint.
 * Consider using the `paths` object below to store frequently used file paths. This way,
 * if you move any files, you'll only need to change your code in one place! Feel free to
 * customize it in any way you wish.
 */
exports.storage;

exports.paths = {
  'siteAssets' : path.join(__dirname, '../web/public'),
  'archivedSites' : path.join(__dirname, '../archives/sites'),
  'list' : path.join(__dirname, '../archives/sites.txt')
};

// Used for stubbing paths for jasmine tests, do not modify
exports.initialize = function(pathsObj){
  _.each(pathsObj, function(path, type) {
    exports.paths[type] = path;
  });
};

// Willson: confirm with Eugene
exports.readListOfUrls = function(cb){
  fs.readFile(exports.paths.list, function(err, data){
    if (err) {
      throw err;
    }
    exports.storage = data.toString().split("\n");
    // Willson: confirm with Eugene
    if (cb !== void 0) {
      cb(exports.storage);
    }
  });
};

exports.isUrlInList = function(url){
  return exports.storage.indexOf(url) !== -1;
};

exports.addUrlToList = function(url){
  fs.appendFile(exports.paths.list, '\n' + url, function (err) {
    if (err) throw err;
  });
};

exports.isURLArchived = function(url, cb){
  fs.readdir(exports.paths.archivedSites, function(err, files){
    if (err) {
      throw err;
    }
    cb(files);
  });
};

exports.downloadUrls = function(url){
  httpRequest.get({
    url: url
  }, exports.paths.archivedSites + "/" + url, function (err, res) {
    if (err) {
      throw err;
    }
  });
};