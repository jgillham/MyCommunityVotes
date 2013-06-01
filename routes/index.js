
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: 'Express' });
};

exports.map = function(req, res){
  // res.send("respond with maps !!!!!");
  res.render("map", {});

};

