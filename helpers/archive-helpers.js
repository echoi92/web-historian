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
var storage;

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

// The following function names are provided to you to suggest how you might
// modularize your code. Keep it clean!

exports.readListOfUrls = function(){
  fs.readFile(exports.paths.list, function(err, data){
    console.log('inner function running, data is', data);
    if (err) {
      throw err;
    }
    storage = data.toString().split("\n");
    // exports.isURLArchived('www.google.com');
    // exports.isURLArchived('www.cnn.com');
  });
};

exports.isUrlInList = function(url){
// // assume input url is string
// // return a boolean on whether string is in array
  return storage.indexOf(url) !== -1;
};

exports.addUrlToList = function(url){
  fs.appendFile(exports.paths.list, url+'\n', function (err) {
    if (err) throw err;
    console.log('url', url, ' appended!');
  });
};

exports.isURLArchived = function(url){
  //return a boolean on whether or not there is a corresponding file inside the archive to the argument url;
  fs.readdir(exports.paths.archivedSites, function(err, files){
    if (err) throw err;
    // console.log(files.indexOf(url) !== -1);
    return files.indexOf(url) !== -1;
  });

};

exports.downloadUrls = function(url){
  // url will be a string
  //save all the html data of the passed in url , save it into a file inside archives/sites with
  // name equal to url;
  //invoked if isURLArchived is false
  // var writeStream = fs.createWriteStream(exports.paths.archivedSites + "/" + url);
  httpRequest.get({
    url: url
    // progress: function (current, total) {
    //   console.log('downloaded %d bytes from %d', current, total);
    // }
  }, exports.paths.archivedSites + "/" + url, function (err, res) {
    if (err) {
      console.error(err);
      return;
    }
    console.log(res.code, res.headers, res.file);
  });
};
