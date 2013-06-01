# Cheesecake

Cheesecake is a factory library made to create simple data objects desregarding constructors.

As a sample code, it's very minimalistic but shows a lot of what I feel about coding. It's concise code, tested and with 
well defined goal. If I had to create a new development methodology it would be called "Keep it really really really simple"

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
