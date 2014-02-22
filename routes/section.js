// Generated by CoffeeScript 1.7.1
(function() {
  var Section, createAndAdd, populateDB;

  Section = require('../schemas/schemas').Section;

  Section.count({}, function(err, c) {
    if (err) {
      console.log(err);
    }
    if (c === 0) {
      console.log('Populating database');
      return populateDB();
    }
  });

  exports.findAll = function(req, res) {
    return Section.find(function(err, items) {
      return res.send(items);
    });
  };

  exports.create = function(req, res) {
    var newSection;
    newSection = new Section(req.body);
    console.log('created section ' + newSection.title);
    newSection.save();
    return res.send();
  };

  exports.getById = function(req, res) {
    var id;
    id = req.route.params['id'];
    return Section.findById(id, function(err, result) {
      return res.send(result);
    });
  };

  exports.edit = function(req, res) {
    var id, section;
    section = req.body;
    delete section._id;
    id = req.params.id;
    return Section.update({
      _id: id
    }, {
      $set: section
    }, function(err, numAffected, raw) {
      if (err) {
        console.log(err);
      }
      console.log('The number of updated documents was %d', numAffected);
      return res.send(section);
    });
  };

  populateDB = function() {
    var section, sections, _i, _len, _results;
    sections = [
      {
        title: 'Node.js',
        link: 'http://www.nodejs.org',
        category: 'default',
        htmlId: 'node',
        body: 'Node.js is a software platform that is used to build scalable network (especially server-side) applications. Node.js utilizes JavaScript as its scripting language, and achieves high throughput via non-blocking I/O and a single-threaded event loop. Node.js contains a built-in HTTP server library, making it possible to run a web server without the use of external software, such as Apache or Lighttpd, and allowing more control of how the web server works.'
      }, {
        title: 'Coffeescript',
        link: 'http://www.coffeescript.org',
        htmlId: 'coffee',
        body: 'CoffeeScript is a programming language that transcompiles to JavaScript. The language adds syntactic sugar inspired by Ruby, Python and Haskell to enhance JavaScript\'s brevity and readability, adding additional features like list comprehension and pattern matching. CoffeeScript compiles predictably to JavaScript, and programs can be written with less code, typically 1/3 fewer lines, with no effect on runtime performance. Since March 16, 2011, CoffeeScript has been on GitHub\'s list of most-watched projects, and as of 2013 was the twelfth[5] most popular language on GitHub in terms of project-count (at one point it was tenth). However, also in 2013 it was ranked 29th among languages, based on number of questions tagged at Stack Overflow.'
      }, {
        title: 'Mocha',
        link: 'http://visionmedia.github.io/mocha/',
        htmlId: 'mocha',
        body: 'Mocha is a feature-rich JavaScript test framework running on node.js and the browser, making asynchronous testing simple and fun. Mocha tests run serially, allowing for flexible and accurate reporting, while mapping uncaught exceptions to the correct test cases.'
      }, {
        title: 'Backbone.js',
        link: 'http://www.backbonejs.org',
        htmlId: 'backbone',
        body: 'Backbone.js gives structure to web applications by providing models with key-value binding and custom events, collections with a rich API of enumerable functions, views with declarative event handling, and connects it all to your existing API over a RESTful JSON interface.'
      }
    ];
    _results = [];
    for (_i = 0, _len = sections.length; _i < _len; _i++) {
      section = sections[_i];
      _results.push(createAndAdd(section));
    }
    return _results;
  };

  createAndAdd = function(sec) {
    var newSection;
    newSection = new Section(sec);
    return newSection.save();
  };

}).call(this);
