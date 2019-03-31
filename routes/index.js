var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router(); //router coming in 

/* GET home page. */
router.get('/', function(req, res, next) {
  // get data from the db, and then sent it through the route
  // to the index.hbs page, and render that (including our DB data)

  // make a query from the database, if query is not successful run this error.
  connect.query(`SELECT name, image FROM hero`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);
      res.render('index', { images: result }); // this gets sent to layout.hbs
    }
  });
  //res.render('index', { title: 'Express' });
});

// get one hero's bio information

router.get('/:hero', function(req, res, next) {
  // get data from the db, and then sent it through the route
  // to the index.hbs page, and render that (including our DB data)

  // make a query from the database, if query is not successful run this error.
  connect.query(`SELECT * FROM hero WHERE name="${req.params.hero}"`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      console.log(result);
     res.render('bio', { bioData: result[0] }); // this gets sent to layout.hbs
    }
  });
  //res.render('index', { title: 'Express' });
});

module.exports = router;
