
exports.index = (req, res) ->
  res.locals = {
    title: 'Node',
    description: 'An example of one way to build a powerful web app based on Node.js'
  }
  res.render 'index'

