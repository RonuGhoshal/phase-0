// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var x = 20;
console.log(20 * x);

//prompt("What is your favorite food?");
//console.log("Hey, that's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle:

z = "#"
for (x=1; x <= 7; x++) {
  console.log(z);
  z += "#";
}


// Functions

// Complete the `minimum` exercise.

function min(x, y) {
  if (x < y)
    return x
  else if (y < x)
    return y
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Ronu",
  foods: ["burritos", "tacos", "quesadillas"],
  quirk: "I like Mexican food. A lot",
}
console.log(me.name);
console.log(me.foods);
console.log(me.quirk)

