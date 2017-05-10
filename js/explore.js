//Pseudocode
//1. Initialize a string variable and assign a value
//2. write a function to print out the string in reverse.
//  a. Declare an empty string known as rev_string
//  b. calculate the length of the string
//  c. Initialize a counter and assign the string length - 1 to it.
//  d. Count down from the string length to 0. 
//  e. For every count, add the equivalent letter from the original string to rev_string.
//  f. After loop is complete return rev_string
//3. print new variable if a condition is true



function reverse(string) {
  var revString = "";
  for (var i = string.length-1; i >= 0; i--) {
    revString += string[i];
  }
  return revString;
}

var str = "Anybody";
var printReversed = true;
reversedString = reverse(str);

if (printReversed){
console.log(reversedString);
}
else {
  console.log(str);
}

