var path = require('path');
var fs = require('fs');
var archive = require('../helpers/archive-helpers');

exports.headers = headers = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10, // Seconds.
  'Content-Type': "text/html"
};

exports.serveAssets = function(res, asset) {
  // Write some code here that helps serve up your static files!
  // (Static files are things like html (yours or archived from others...), css, or anything that doesn't change often.)
};

exports.postRequest = function(req, res){
  var url = '';
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

exports.getRequest = function(req, res){
  if ( req.url === '/' || req.url === '/index.html' ){
    res.writeHead(200, headers);
    var writeStream = fs.createReadStream(archive.paths.siteAssets + "/index.html");
    writeStream.pipe(res);
  } else if( req.url === '/loading.html' ){
    res.writeHead(200, headers);
    var writeStream = fs.createReadStream(archive.paths.siteAssets + "/loading.html");
    writeStream.pipe(res);
  } else if ( req.url === '/styles.css'){
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/css');
    // res.writeHead(200, headers);
    var writeStream = fs.createReadStream(archive.paths.siteAssets + "/styles.css");
    writeStream.pipe(res);
  } else {
    res.writeHead(404, headers);
    res.end('404 error');
  }
};



// As you progress, keep thinking about what helper functions you can put here!
