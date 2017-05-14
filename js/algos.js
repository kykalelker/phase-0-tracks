//Declare a phrase array with some words/phrase.
//Define a function to calculate the longest phrase
// - iterate through the array
// - starting with the first phrase, for every string in the array, calculate its length 
// - store length in a max length variable and the position/index of the phrase in a static index variable
// - on the next iteration, compare the length of the new string with max length.
// - if new string length is greater than max length, update the max length variable to the larger length and update the static index variable to the position of the longer word
// - once the entire array has been parsed, return the phrase at the static index position of the array (this phrase will have the greatest length acc to the max length variable)


function longestPhrase(phraseArr) {
  var maxLength = 0
  var staticIndex = 0
  for (var i = 0; i < phraseArr.length; i++) {
    if (phraseArr[i].length > maxLength) {
      maxLength = phraseArr[i].length;
      staticIndex = i;
    }
  }
  return phraseArr[staticIndex];
}

var phrases = ["hi", "hello", "howdydo", "wassup", "hiya",
"ola"];
console.log(phrases);
console.log("The longest word in the array of phrases is " + longestPhrase(phrases));
