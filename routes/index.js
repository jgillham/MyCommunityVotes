
/*
 * GET home page.
 */

var fs = require("fs");
var file ; 


exports.index = function(req, res){
	fs.readFile("public/home.html", function(err, data){
		res.writeHead(200, {'Content-Type': 'text/html'});
		res.end(data)
	});
};

exports.map = function(req, res){
  // res.send("respond with maps !!!!!");
  res.render("map", {});

};
exports.details = function(req, res){
  fs.readFile("public/details.html", function(err, data){
  		if(err) throw new Error(err);
		res.writeHead(200, {'Content-Type': 'text/html'});
		res.end(data);
	});

};

