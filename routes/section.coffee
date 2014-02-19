Section = require('../schemas/schemas').Section

# Populate the database if there are no records
Section.count({},(err, c) ->
  console.log err if err
  if c == 0
    console.log 'Populating database'
    populateDB()
)

exports.findAll = (req, res) ->
  Section.find (err, items) ->
    res.send items


exports.create = (req, res) ->
  newSection = new Section req.body
  console.log 'created section ' + newSection.title
  newSection.save()
  res.send()

exports.getById = (req, res) ->
  id = req.route.params['id']
  Section.findById id, (err, result) ->
    res.send result

exports.edit = (req, res) ->
  section = req.body
  delete section._id
  #console.log req
  id = req.params.id
  Section.update({ _id: id }, { $set: section }, (err, numAffected, raw) ->
    console.log err if err
    console.log 'The number of updated documents was %d', numAffected
    #console.log 'The raw response from Mongo was ', raw
    res.send(section)
  )

populateDB = ->
  sections = [
    {
      title: 'Class 1'
      category: 'default'
      htmlId: 'class1'
      creditDrop: 'credit1'
      gradeDrop: 'grade1'
      formId: 'form1'
      gradeField: 'A'
      creditField: '1'
    },
    {
      title: 'Class 2'
      htmlId: 'class2'
      creditDrop: 'credit2'
      gradeDrop: 'grade2'
      formId: 'form2'
      gradeField: 'A'
      creditField: '1'
    },
    {
      title: 'Class 3'
      htmlId: 'class3'
      creditDrop: 'credit3'
      gradeDrop: 'grade3'
      formId: 'form3'
      gradeField: 'A'
      creditField: '1'
    },
    {
      title: 'Class 4'
      htmlId: 'class4'
      creditDrop: 'credit4'
      gradeDrop: 'grade4'
      formId: 'form4'
      gradeField: 'A'
      creditField: '1'
    },
    {
       title: 'Class 5'
       htmlId: 'class5'
      creditDrop: 'credit5'
      gradeDrop: 'grade5'
      formId: 'form5'
      gradeField: 'A'
      creditField: '1'
    }

  ]
  createAndAdd section for section in sections

createAndAdd = (sec)->
  newSection = new Section(sec)
  newSection.save()