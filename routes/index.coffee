
exports.index = (req, res) ->
  res.locals = {
    title: 'GPA Calculator',
    description: 'A way to calculate your grade.'
  }
  res.render 'index'

