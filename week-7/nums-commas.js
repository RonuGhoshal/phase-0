// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

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

array - integers
for (var i = array.size - 3; i <= 0 ; i = i-3)
insert comma

10,000,000
return the string

*/


// Initial Solution

var separateComma = function(num) {
  var num_array_s = num.toString().split("");
  for (var i = num_array_s.length - 3; i > 0; i = i-3) {
    num_array_s.splice(i, 0, ",");
  }
  return num_array_s.join('');
}



// Refactored Solution




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


// Reflection