console.log("SHOES!");

function changeFontColor() {
  var shoes = document.getElementsByTagName('li');
  var i = 0;
  while(i<shoes.length){
    shoes[i].style.color = "blue";
    i += 1;
  }
}

changeFontColor();

var extraInfo = document.getElementById("extra_info");
extraInfo.insertAdjacentHTML('afterbegin', '<h3>Colors Available</h3>');



var colors = document.getElementsByTagName('b');
var color = colors[0];
color.onclick = function() {
  var images = document.getElementsByTagName('img');
var image = images[0];
  image.style.display = "block";
}