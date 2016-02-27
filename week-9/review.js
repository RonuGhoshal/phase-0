/* pseudocode

Build constructor function RPNCalculator

Define add, subtract, multiply methods

Define evaluate method

Evaluate:
Define array of symbols
Split string into array of numbers and symbols
loop while array length > 1
Iterate through array
   if element is a symbol,
   calculate
   replace the elements with the result
   break
*/

function RPNCalculator() {
  this.evaluate = evaluate;
  this.calculate = calculate;
  this.add = add;
  this.subtract = subtract;
  this.multiply = multiply;
}

function evaluate(string) {
  var symbols = ['+', '-', '*']
  var array = string.split(' ');
  while (array.length > 1) {
    for (var x in array) {
      if (symbols.indexOf(array[x]) != -1) {
        var replace = calculate(array[x-2], array[x-1], array[x]);
        array.splice((x-2), 3, replace);
        break;
      }
    }
  }
  return array[0];
}

function calculate(x, y, sym) {
  if (sym == "+") {
    return add(Number(x), Number(y));
  }
  if (sym == "-") {
    return subtract (Number(x), Number(y));
  }
  if (sym == "*") {
    return multiply (Number(x), Number(y));
  }

}

function add(x, y) {
  return (x + y);
}

function subtract(x, y) {
  return (x - y);
}

function multiply (x, y) {
  return (x * y);
}

rpn = new RPNCalculator;
console.log(rpn.evaluate('70 10 4 + 5 * -'));
console.log(rpn.evaluate("0 1 -"));

/*Reflection
I looked through this quite a bit but really could not think of any refactoring
ideas that would make the code cleaner.

This solidified my understanding of constructor functions and how they are
similar/different from Ruby classes. The most difficult part of this was definitely
trying to get the syntax right for my constructor function. I still am uncertain
as to how prototypes could play in here.

I solved the problem in basically the same way - my pseudocode was just about
the same as for the Ruby version.



*/