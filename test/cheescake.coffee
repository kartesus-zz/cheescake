require('./helper')

describe "Cheescake", ->
  before () -> 
    @factory = new( require('../').Factory )
    @template = name: "Raspberry Cake", servings: 6

  describe "Defining factories", ->
    beforeEach () -> @factory.define("favorite", @template)

    it "should create a function for the factory", () -> 
      assert.isFunction @factory.favorite

    it "should return a copy of the template", () -> 
      assert.deepEqual @factory.favorite(), @template

    it "should override defaults", () -> 
      overriden = name: 'Favorite', servings: 6
      assert.deepEqual @factory.favorite(name: 'Favorite'), overriden

    it "should add inexistent properties when overriding", () ->
      overriden = name: 'Raspberry Cake', servings: 6, time: '2h'
      assert.deepEqual @factory.favorite(time: '2h'), overriden
