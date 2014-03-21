var path = require('path');
var fs = require('fs');
var archive = require('../helpers/archive-helpers');

exports.headers = headers = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10 // Seconds.
  // 'Content-Type': "text/html"
};

exports.serveAssets = function(res, asset, fileType) {
    // fix line 15 later
    if (fileType === "html") {
      res.setHeader('Content-Type', 'text/html');
    } else if (fileType === "css") {
      res.setHeader('Content-Type', 'text/css');
    }
    if (asset === "/") {
      asset = "/index.html";
    }
    res.writeHead(200, headers);
    var readStream = fs.createReadStream(archive.paths.siteAssets + asset);
    readStream.pipe(res);
};

exports.postRequest = function(req, res){
  var url = '';
  req.on('data', function(chunk){
    url+=chunk.toString();
  });

  req.on('end', function(){
    url = url.slice(4);
    if ( archive.isUrlInList(url) ){
      archive.isURLArchived(url, function(files){
        console.log("type of files:", Array.isArray(files), " files is: ", files);
        if (files.indexOf(url) !== -1) {
          res.writeHead(200, headers);
          var readStream = fs.createReadStream(archive.paths.archivedSites + '/' + url);
          readStream.pipe(res);
        } else{
        //redirect to loading page
          archive.downloadUrls(url);
        }
      });
    } else{
      //redirect ot loading page
      archive.addUrlToList(url);
    }
    archive.readListOfUrls();
  });
};

exports.getRequest = function(req, res){
  if ( req.url === '/' || req.url === '/index.html' || req.url === '/loading.html'){
    exports.serveAssets(res, req.url, "html");
  } else if (req.url === '/styles.css'){
    exports.serveAssets(res, req.url, "css");
  } else if ( archive.isUrlInList(req.url) ){
    exports.serveAssets(res, req.url, "html");
  }else {
    res.writeHead(404, headers);
    res.end('404 error');
  }
};