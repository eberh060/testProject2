gradesToNumbers = (grade1)->
  switch grade1
    when "A" then 4
    when "A-" then 3.666
    when "B+" then 3.333
    when "B" then 3
    when "B-" then 2.666
    when "C+" then 2.333
    when "C" then 2
    when "C-" then 1.666
    when "D+" then 1.333
    when "D" then 1
    when "D-" then .666
    else 0

numbersToArray = (grade1,grade2, grade3, grade4) ->
  gradesArr = [0,0,0,0]
  gradesArr[0] = gradesToNumbers(grade1)
  gradesArr[1] = gradesToNumbers(grade2)
  gradesArr[2] = gradesToNumbers(grade3)
  gradesArr[3] = gradesToNumbers(grade4)
  return gradesArr

creditsToArr = (credit1, credit2, credit3, credit4) ->
  creditArr = [0,0,0,0]
  creditArr[0] = credit1
  creditArr[1] = credit2
  creditArr[2] = credit3
  creditArr[3] = credit4
  return creditArr

gradeIt = (grades, credits) ->
  gradeCredits = (grades[0] * credits[0]) + (grades[1] * credits[1]) + (grades[2] * credits[2]) + (grades[3] * credits[3])
  creditTotal = credits[0] * 1 + credits[1] * 1 + credits[2] * 1 + credits[3] * 1
  if creditTotal == 0 then return "Missing Information"
  gpa = (gradeCredits/creditTotal).toFixed(3)
  return gpa

module.exports.numbersToArray = numbersToArray
module.exports.creditsToArr = creditsToArr
module.exports.gradeIt = gradeIt
module.exports.gradesToNumbers = gradesToNumbers
























exports.cube = (number) ->
  number*number*number

exports.isFiveDigitOddNumber = (number) ->
  test = number % 2
  if number >= 10000
    if number <= 99999
      if test == 1
        return true
  false

