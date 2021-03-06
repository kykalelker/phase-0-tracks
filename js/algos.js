//Release 0: Pseudocode 
//Declare a phrase array with some words/phrase
//Define a function to calculate the longest phrase
// - iterate through the array
// - starting with the first phrase, for every string in the array, calculate its length 
// - store length in a max length variable and the position/index of the phrase in a static index variable
// - on the next iteration, compare the length of the new string with max length.
// - if new string length is greater than max length, update the max length variable to the larger length and update the static index variable to the position of the longer word
// - once the entire array has been parsed, return the phrase at the static index position of the array (this phrase will have the greatest length acc to the max length variable)
//Call function passing the phrase array as an argument

//Release 0: Business Logic for Longest string
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

//Release 0: Driver Code for Longest string
var greetingPhrases = ["hi", "hello", "howdydo", "wassup", "hiya", "ola"];
console.log(greetingPhrases);
console.log("The longest greeting in the array of greeting phrases is " + longestPhrase(greetingPhrases));

var transportationPhrases = ["car", "helicopter", "airplane", "boat", "train", "motorbike"];
console.log(transportationPhrases);
console.log("The longest transportation in the array of transportation phrases is " + longestPhrase(transportationPhrases));

var roadPhrases = ["road", "way", "drive", "parkway", "avenue", "street"];
console.log(roadPhrases);
console.log("The longest road in the array of road phrases is " + longestPhrase(roadPhrases));


//Release1: Pseudocode
//Declare 2 objects with 3-4 datapoints
//Define a function that compares the two objects for a matching key-value pair
// - set a flag variable to false
// - for every datapoint in object 1 
//  - iterate through all datapoints in object 2 comparing them to the static datapoint of object 1
//    - if there is a match, change flag to true 
// - return the flag,
//Call function passing the objects as arguments

//Release 1: Business Logic for Object comparison
function objectCompare(obj1, obj2) {
  var match = false;
    for (x in obj1) {
      for (y in obj2) {
        if ((x == y) && (obj1[x] == obj2[y])){
          match = true;
        }
      }    
    }
  return match;
}

//Release 1: Driver Code for Object comparison
var dog = {name: "Nocky", age: 2, isPet: true, hasLegs: 4};
var cat = {name: "Maumau", age: 4, isPet: true, hasLegs: 4};
var kid = {name: "Anika", age: 2, isPet: false, hasLegs: 2}; 

console.log(objectCompare(dog,cat));
console.log(objectCompare(cat,kid));
console.log(objectCompare(dog,kid));


//Release 2: Pseudocode
//Declare and assign a value to array length variable
//Define a function that takes as its parameter the array length variable
// - declare an empty word array
// - declare a string variable assigning all 26 letter of the alphabet in the form of a single string as its value
// - for every word until a maximum of arraylength number of words
//    - using a random number generator, generate a number and assign it to a word length variable
//    - using another random number generator generate an index value to select a letter from the string variable and append to the word
// - Once all words are generated, return the word array
//Call the word generator function and print result 

//Release 2: Business logic for random word generation
function wordGenerator(num) {
  var wordArray = [];
  letterSet = "abcdefghijklmnopqrstuvwxyz";
  for (i = 0; i < num; i++) {
   var wordLength = Math.ceil(Math.random() * 10);
   var word = "";
   for (j = 1; j <= wordLength; j++) {
    index = Math.floor(Math.random() * 26);
    word += letterSet[index];
   }
   wordArray[i] = word;
  }
  return wordArray;
}

//Release 2: Driver code for random word generation
for (x = 1; x <= 10; x++){
numberOfWords = 6;
arrayOfWords = (wordGenerator(numberOfWords));
console.log(arrayOfWords);
console.log("The longest word in the array of random words is " + longestPhrase(arrayOfWords));
}





