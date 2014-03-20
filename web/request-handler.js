var path = require('path');
var archive = require('../helpers/archive-helpers');
var helpers = require('./http-helpers.js');
var fs = require('fs');

archive.readListOfUrls();

exports.handleRequest = function (req, res) {
  //if request.method is post, invoke postrequest else invoke getrequest
  if (req.method === "GET") {
    helpers.getRequest(req, res);
  } else if (req.method === "POST") {
    helpers.postRequest(req, res);
  }

  // assume for now that request.method is always POST
  // retrieve the data(input url)
  // -> check if url is in the array
  //    yes - > check if archived
  //            yes - > load the archived page
  //            no - > redirect to loading.html, save to archive
  //    no - > redirect to loading page - > add it to the text file
};