// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Tori Huang

// Pseudocode
/*
input: an integer
output: a string: that integer expressed in comma notation
steps:

turn string into an array
turn each value in array into a number
loop starting from end,
every three elements, add a comma
make sure to account for newly added commas

array of integers
for (var i = array.size - 3; i <= 0 ; i = i-3)
insert commas
return the string

*/


// Initial Solution
/*
var separateComma = function(num) {
  var num_array_s = num.toString().split("");
  for (var i = num_array_s.length - 3; i > 0; i = i-3) {
    num_array_s.splice(i, 0, ",");
  }
  return num_array_s.join('');
}
*/


// Refactored Solution

// We were not really able to refactor much - we ended up having to look up some built-in
// methods for the initial solution since we are new to JavaScript. From our research it looks
// like this could be refactored with a regular expression, but we felt this was a bit complex to
// dive into at this point in the program.

function separateComma(num) {
  var num_array_s = num.toString().split("");
  for (var i = num_array_s.length - 3; i > 0; i -=3) {
    num_array_s.splice(i, 0, ",");
  }
  return num_array_s.join('');
}


// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(1000000) === "1,000,000"),
  "The number 1000000 should return '1,000,000'",
  "1. "
)

assert(
  (separateComma(10000000) === "10,000,000"),
  "The number 10000000 should return '10,000,000'",
  "2. "
)

assert(
  (separateComma(100) === "100"),
  "The number 100 should return '100'",
  "3. "
)
// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript?
Did you approach the problem differently?

In general, our logic was the same for approaching the problem. We just had to stop
ourselves from instinctively trying to use Ruby methods like .each or .map.

What did you learn about iterating over arrays in JavaScript?

We got some good practice iterating over arrays using a for loop, which worked
quite easily.

What was different about solving this problem in JavaScript?

The "splice" method was a bit different from Ruby's "insert" method
Also, the for loop was different but had the same effect of an ".each" iteration.

What built-in methods did you find to incorporate in your refactored solution?

We used .length and .splice.

*/