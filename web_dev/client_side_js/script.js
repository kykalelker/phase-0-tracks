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
