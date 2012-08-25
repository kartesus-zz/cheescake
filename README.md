# Cheesecake

Cheesecake is a factory library made to create simple data objects desregarding constructors.

## Example

````javascript
var Factory = require('cheesecake').Factory
Factory.define("favorite", {
  name: "White Chocolate Raspberry Cheesecake",
  servings: 6
})

// Creates a new favorite cheesecake
Factory.favorite()
// { name: "White Chocolate Raspberry Cheesecake", servings: 6 }

// Creates a new favorite increasing servings
Factory.favorite({ servings: 8 })
// { name: "White Chocolate Raspberry Cheesecake", servings: 8 }
````