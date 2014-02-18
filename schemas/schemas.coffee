mongoose = require 'mongoose'
Schema = mongoose.Schema


Section = new Schema(
  title: String
  category: String
  htmlId: String
  creditDrop: String
  gradeDrop: String
  formId: String
)

GPASchema = new Schema(
  title: String
  GPA: Number
)




Section = mongoose.model 'Section', Section
GPA = mongoose.model 'GPA', GPASchema

module.exports =
  Section : Section,
  GPA : GPA