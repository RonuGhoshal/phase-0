 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Play a "heads or tails" game vs the computer
// Goals: Guess the correct coinflip - get a coin if you are right, give away a coin if you are wrong
// Characters: User, Computer
// Objects: User, Computer
// Functions: Coinflip, displayBalance, raiseStakes

// Pseudocode
//  Notify user: We both have 40 coins. Guess heads or tails. Each round, the stakes will double.
//  Flip coin, ask user heads or tails
//  If user's guess is correct, user gets 1 of computer's coins. If incorrect, computer gets one of user's coins
//  Ask user if they want to play again
//  If so, double the stakes (2, then 4, then 6 coins etc)
//  If user's account gets to 80+ or less than 1, end game.


// Initial Code

var computer = {
  account: 40
};

var user = {
  account: 40
};

var stakes = 1

var keepPlaying = "Y"

function coinFlip() {
  var choices = ["H", "T"];
  var correctAnswer = choices[Math.floor(Math.random() * choices.length)];
  var userChoice = prompt("Heads or tails? Enter H for heads or T for tails.\n");
  if (userChoice == correctAnswer) {
    alert("You win!");
    user.account = user.account + stakes;
    computer.account = computer.account - stakes;
  }
  if (userChoice != correctAnswer) {
    alert("You lose!");
    user.account = user.account - stakes;
    computer.account = computer.account + stakes;
  }
};

function raiseStakes() {
    alert("Let's double the stakes!");
    stakes = stakes * 2;
  }


function displayBalance() {
 keepPlaying = prompt("You have " + user.account + " coins. Keep playing? Enter Y or N\n");
}




alert("Let's play a coin-flipping game! We both start out with 40 coins. Each round, the stakes will double. First player to 80 coins wins!")
while (keepPlaying != "N") {
  coinFlip();
  if (user.account < 1) {
    alert("Game over! You lost!");
  }
  if (user.account > 79) {
    alert("Game over! You won!");
    break;
  }
  displayBalance();
  if (keepPlaying == "N") {
    break;
  }
  raiseStakes();
}

alert("Thank you for playing.")

// Refactored Code
var computer = {
  account: 40
};

var user = {
  account: 40
};

var stakes = 1;

var keepPlaying = "Y";

var userChoice = "";

function coinFlip() {
  var choices = ["H", "T"];
  var correctAnswer = choices[Math.floor(Math.random() * choices.length)];

  while ((userChoice != "H") && (userChoice != "T")) {
    var userChoice = prompt("Heads or tails? Enter H for heads or T for tails.\n");
  }

  if (userChoice == correctAnswer) {
    alert("You win!");
    user.account = user.account + stakes;
    computer.account = computer.account - stakes;
  }

  if (userChoice != correctAnswer) {
    alert("You lose!");
    user.account = user.account - stakes;
    computer.account = computer.account + stakes;
  }
};

function raiseStakes() {
    alert("Let's double the stakes!");
    stakes = stakes * 2;
  }


function displayBalance() {
 keepPlaying = "";
 while ((keepPlaying != "Y") && (keepPlaying != "N")) {
   keepPlaying = prompt("You have " + user.account + " coins. Keep playing? Enter Y or N\n");
 }
}

alert("Let's play a coin-flipping game! We both start out with 40 coins. Each round, the stakes will double. First player to 80 coins wins!")
while (keepPlaying != "N") {
  coinFlip();
  if (user.account < 1) {
    alert("Game over! You lost!");
  }
  if (user.account > 79) {
    alert("Game over! You won!");
    break;
  }
  displayBalance();
  if (keepPlaying == "N") {
    break;
  }
  raiseStakes();
}

alert("Thank you for playing.")




// Reflection
// The most difficult part here was probably trying to structure my program into objects and functions. It took some work
// to determine what statements should go into which function. Also, I wasn't able to get prompt to work in my Terminal,
// with node, however, this did run perfectly on the website js.do.
//
// I learned the importance of scope in regards to variables - I realized that if I want to access a variable
// outside a function then I need to declare it outside the function (globally)
//
// This exercise also helped me learn about the Math.random() method although I am still getting the hang of it.

// You can access and manipulate the properties of objects by writing functions that modify them (with bracket
// or dot notation, depending on the particular case).