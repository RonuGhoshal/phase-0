// PERSON 5
// Refactored code & user stories


var evenNumbers = [2,4,6,8,10];
var oddNumbers = [1,3,5,7,9];


// As a user, I want to get the sum of a group of numbers.
function sum(array) {
  var total = 0;
  for(var index = 0; index < array.length ; index++) {
    total += array[index];
  };
  return total;
}

console.log(sum(evenNumbers)) // Get the sum of the even numbers between 2 and 10.
console.log(sum(oddNumbers)) // Get the sum of the odd numbers between 1 and 9.

// As a user, I want to get the average (aka mean) of a group of numbers.
function average(array) {
  return (sum(array)/array.length);
}

 console.log(average(evenNumbers)) //Get the average of the even numbers from 2-10
 console.log(average(oddNumbers)) // Get the average of the odd numbers from 1-9


// As a user, I want to get the median of a group of numbers.
function median(array) {
  if( array.length % 2 == 0) {
    return average([array[(array.length/2)-1], array[array.length/2]]);
  }
  else {
    return array[Math.floor(array.length/2)]
  };
}

console.log(median(evenNumbers)) //Get the median of the even numbers from 2-10
console.log(median(oddNumbers)) //Get the median of the odd numbers from 1-9