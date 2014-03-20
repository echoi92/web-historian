var path = require('path');
var archive = require('../helpers/archive-helpers');
var fs = require('fs');

// require more modules/folders here!

//set up the data storage for site.txt ;
//

archive.readListOfUrls();
archive.downloadUrls('www.cnn.com');

exports.handleRequest = function (req, res) {
  // assume for now that request.method is always POST
  // retrieve the data(input url)
  // -> check if url is in the array
  //    yes - > check if archived
  //            yes - > load the archived page
  //            no - > redirect to loading.html, save to archive
  //    no - > redirect to loading page - > add it to the text file
  var url = ''
  req.on('data', function(chunk){
    url+=chunk.toString();
  });
  req.on('end', function(){
    if ( archive.isUrlInList(url) ){
      if ( archive.isURLArchived(url) ){           //MAKE SURE YOU HAVE readListOfUrls in each block;
        //load the page
      }else{
        //redirect to loading page
        archive.downloadUrls(url);
      }
    }else{
      //redirect ot loading page
      archive.addUrlToList(url); 
    }
    console.log('updated array');
    archive.readListOfUrls();
  });
  res.end(archive.paths.list);
};