//Pseudocode
//1. Initialize a string variable and assign a value
//2. write a function to print out the string in reverse.
//  a. calculate the length of the string
//  b. Initialize a counter and assign the string length to it.
//  c. Count down from the string length to 1. 
//  d. For every count, print the equivalent letter from the string.
//  e. Store resulting string in a variable
//3. print new variable if a condition is true



function reverse(string) {
  var rev_string = "";
  for (var i = string.length-1; i >= 0; i--) {
    rev_string += string[i];
  }
  return rev_string;
}

var str = "Anybody";

console.log(reverse(str));


