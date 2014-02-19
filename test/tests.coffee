assert = require 'assert'
gradeIt = require('../simpleFunctions').gradeIt
creditsToArr = require('../simpleFunctions').creditsToArr
numbersToArray = require('../simpleFunctions').numbersToArray
gradesToNumbers = require('../simpleFunctions').gradesToNumbers

cube = require('../simpleFunctions').cube
isOdd5d = require('../simpleFunctions').isFiveDigitOddNumber


describe 'testing a coffeescript cube function', ->
  it '3 cubed is 27', ->
    assert.equal 27, cube(3)
  it '-3 cubed is -27', ->
    assert.equal -27, cube(-3)

describe 'incomplete test coverage example', ->
  it '5 is not one', ->
    assert.equal false, isOdd5d(5)
  it '30525 is not one', ->
    assert.equal false, isOdd5d(30524)

describe "testing numbersToArray", ->
  it "should return array [4,3.666,2.666,1]", ->
    assert.deepEqual(numbersToArray("A","A-","B-","D"),[4,3.666,2.666,1])

describe "testing creditsToArr", ->
  it "should return array [1,2,3,5]", ->
    assert.deepEqual(creditsToArr(1,2,3,5),[1,2,3,5])

describe "testing gradeIt", ->
  describe "test 1", ->
    it "should return 4", ->
      assert.equal(gradeIt([4,4,4,4], [1,2,3,5]), 4)

  describe "test 2", ->
    it "should return 3.256", ->
      assert.equal(gradeIt([3.666,3,4,2.666],[5,4,1,3]),3.256)

  describe "test 3", ->
    it "should return 2.972", ->
      assert.equal(gradeIt([2.666,1,4,3.333],[1,3,5,3]), 2.972)

describe "testing gradesToNumbers", ->
  describe "test 1", ->
    it "should return 3", ->
      assert.equal(gradesToNumbers("B"), 3)
