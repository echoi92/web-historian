// eventually, you'll have some code here that uses the code in `archive-helpers.js`
// to actually download the urls you want to download.
var fs = require('fs');
var _ = require('underscore');
var archiveHelpers = require('../helpers/archive-helpers.js');
//
console.log('fetcher initiated');

//grab all the names of the sites inside archivedSites folder, push it into a array
//deduct that array from storage
//    -> invoke both functions with each url as argument;
fs.readdir(archiveHelpers.paths.archivedSites, function (err, arrayOfFiles) {
  if (err) {
    throw err;
  }
  // Willson: confirm with Eugene
  archiveHelpers.readListOfUrls(function (arrayOfStorage) {

    var difference = _.difference(arrayOfStorage, arrayOfFiles);

    _.each(difference, function(url){
      archiveHelpers.downloadUrls(url);
    });
  });

  // now we want to get the difference between the arrays
  // first convert arrayOfFiles to an object (key is the filename, and value is true)
  // console.log('arrayOfFiles is:\n', arrayOfFiles);
  // console.log('archiveHelpers.storage is:\n', archiveHelpers.storage);

  // var difference = _.difference(archiveHelpers.storage, arrayOfFiles);
  // console.log('difference:', difference);

  // _.each(difference, function(url){
  //   console.log('invoking downloadUrls');
  //   archiveHelpers.downloadUrls(url);
  // });
});