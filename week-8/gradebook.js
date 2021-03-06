/*
Gradebook from Names and Scores
I worked on this challenge with Bethelhem
This challenge took me 0.5 hours
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.
/*
var gradebook = new Object();

gradebook["Joseph"]= new Object();
gradebook["Susan"]= new Object();
gradebook["William"]= new Object();
gradebook["Elizabeth"]= new Object();

gradebook["Joseph"].testScores = scores[0];
gradebook["Susan"].testScores = scores[1];
gradebook["William"].testScores = scores[2];
gradebook["Elizabeth"].testScores = scores[3];

gradebook.addScore = function(name,score){
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

var average = function(array){
  var sum = 0;
  for (var i in array) {
    sum += array[i];
  }
  return (sum/array.length);
};

console.log(gradebook);

*/
// __________________________________________
// Refactored Solution

var gradebook = new Object();

for (var x in students) {
  gradebook[students[x]] = {};
  gradebook[students[x]].testScores = scores[x];
}

gradebook.addScore = function(name,score){
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name){
  return average(gradebook[name].testScores);
};

function average(array) {
  var sum = 0;
  for (var i in array) {
    sum += array[i];
  }
  return (sum/array.length);
};

console.log(gradebook);

// __________________________________________
// Reflect

/*
In this exercise we got good practice adding functions to objects. I learned the
proper syntax for doing so. From what I can see here, it appears that these
functions must be function expressions rather than function declarations.

We used a for loop to iterate over the array. In my refactored solution I was able
to iterate over the nested array using a for loop and bracket notation (with brackets nested inside brackets).

On this particular exercise, I did not use any new methods.

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)