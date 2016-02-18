// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Patrick Skelley
// This challenge took me 4 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}


// Pseudocode
// our task is to go through votes and record each student's votes in voteCount. Once the votes have been tallied, assign the winners in officers.

// Iterate over votes
// for each student's vote, add 1 to the candidate's total in vote count
// pull out max value from each property in the officer objects
// pass data into officers object



// __________________________________________
// Initial Solution

/*
var presidentArray = [];
var vpArray = [];
var secArray = [];
var treasArray = [];

for (var x in votes) {
   presidentArray.push(votes[x]["president"]);
   vpArray.push(votes[x]["vicePresident"]);
   secArray.push(votes[x]["secretary"]);
   treasArray.push(votes[x]["treasurer"]);
};

var presCounts = {};
var vpCounts = {};
var secCounts = {};
var treasCounts = {};

for (var i = 0; i < presidentArray.length; i++) {
    presCounts[presidentArray[i]] = (presCounts[presidentArray[i]] + 1) || 1 ;
}
for (var i = 0; i < vpArray.length; i++) {
    vpCounts[vpArray[i]] = (vpCounts[vpArray[i]] + 1) || 1 ;
}
for (var i = 0; i < secArray.length; i++) {
    secCounts[secArray[i]] = (secCounts[secArray[i]] + 1) || 1 ;
}
for (var i = 0; i < treasArray.length; i++) {
    treasCounts[treasArray[i]] = (treasCounts[treasArray[i]] + 1) || 1 ;
}

voteCount["president"] = presCounts;
voteCount["vicePresident"] = vpCounts;
voteCount["secretary"] = secCounts;
voteCount["treasurer"] = treasCounts;

// Getting president:
var presCountsNamesArray =[];
var presCountsArray = [];
for(var x in presCounts) {
  presCountsArray.push(presCounts[x]);
  presCountsNamesArray.push(x);
}
var maxPres = 0
var indexAtMaxPres = 0;
for(var i = 0; i < presCountsArray.length; i++){
  if (presCountsArray[i] > maxPres){
    maxPres = presCountsArray[i];
    indexAtMaxPres = i;
  }
}

officers.president = presCountsNamesArray[indexAtMaxPres];

// Getting vice president
var vpCountsNamesArray =[];
var vpCountsArray = [];
for(var x in vpCounts) {
  vpCountsArray.push(vpCounts[x]);
  vpCountsNamesArray.push(x);
}
var maxVp = 0
var indexAtMaxVp = 0;
for(var i = 0; i < vpCountsArray.length; i++){
  if (vpCountsArray[i] > maxVp){
    maxVp = vpCountsArray[i];
    indexAtMaxVp = i;
  }
}

officers.vicePresident = vpCountsNamesArray[indexAtMaxVp];

// Getting secretary
var secCountsNamesArray =[];
var secCountsArray = [];
for(var x in secCounts) {
  secCountsArray.push(secCounts[x]);
  secCountsNamesArray.push(x);
}
var maxSec = 0
var indexAtMaxSec = 0;
for(var i = 0; i < secCountsArray.length; i++){
  if (secCountsArray[i] > maxSec){
    maxSec = secCountsArray[i];
    indexAtMaxSec = i;
  }
}

officers.secretary = secCountsNamesArray[indexAtMaxSec];

// Getting treasurer
var treasCountsNamesArray =[];
var treasCountsArray = [];
for(var x in treasCounts) {
  treasCountsArray.push(treasCounts[x]);
  treasCountsNamesArray.push(x);
}
var maxTreas = 0
var indexAtMaxTreas = 0;
for(var i = 0; i < treasCountsArray.length; i++){
  if (treasCountsArray[i] > maxTreas){
    maxTreas = treasCountsArray[i];
    indexAtMaxTreas = i;
  }
}

officers.treasurer = treasCountsNamesArray[indexAtMaxTreas];

*/
// __________________________________________
// Refactored Solution

for (var person in votes) {
   for (var element in votes[person]) {
     var name = votes[person][element]
     if (voteCount[element][name] == undefined){
       voteCount[element][name] = 0;
     }
     voteCount[element][name] += 1;
   }
}

for (var office in voteCount) {
  var array = [];
  for (var x in (voteCount[office])) {
    array.push(voteCount[office][x]);
    var winning_votes = Math.max.apply(null, array);
    for (var candidate in (voteCount[office])) {
      if (voteCount[office][candidate] == winning_votes) {
        officers[office] = candidate;
      }
    }
  }
}


// __________________________________________
// Reflection
/*
This exercise was a tough one but was good practice in iterating over nested objects.
I learned that to iterate over a nested object, you may need to use a nested for loop, and
to be very careful with the syntax so as to correctly refer to a property or that property's
value.

The Math.max.apply method was very useful in solving this.

Overall this challenge just solidified my understanding of how to access nested objects
and pass data between nested structures.



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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
