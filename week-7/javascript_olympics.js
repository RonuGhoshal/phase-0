 // JavaScript Olympics

// I paired with Maeve Tierney on this challenge.

// This challenge took me 1.5 hours.


// Bulk Up

var array = [{name: "Sarah Hughes", event: "Ladies' Singles"}, {name: "Tiger Woods", event: "Golf"}]
win(array);

function win(array) {
  for (var x=0; x < array.length; x++)
  {
    console.log(array[x].name + " won the " + array[x].event + "!");
  }
}


// Jumble your words

function reverse(string) {
  var myArray = string.split('');
  myArray = myArray.reverse();
  var myString = myArray.join('');
  return myString;
}

"Jumble Your Words!"
console.log(reverse("Jumble Your Words!"))



// 2,4,6,8

function even(array) {
  var newArray =[];
  for (var x=0; x < array.length; x++) {
    if (array[x] % 2 == 0)
    newArray.push(array[x]);

  }
  return newArray;
}

console.log(even([1,2,3,4,5,6,7,8,9]))


// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps ", 29, " swimming ", " It's medicinal I swear! ")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + michaelPhelps.age + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// This exercise helped solidify the JavaScript syntax, and introduced the concept of Constructor functions.
// A constructor function is a way of creating a "type of object" - it can also hold properties that will be
// used across any type of this object.
// While similar to ruby classes, there are some differences. In JavaScript, any function can potentially
// be a constructor function as there is no special syntax for creating one.