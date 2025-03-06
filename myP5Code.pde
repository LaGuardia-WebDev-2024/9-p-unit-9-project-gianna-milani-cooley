setup = function() {
    size(400, 400);
};

var answer = 1;

var count = 0;
draw = function(){
  background(100,100,100);
  fill(0, 0, 0);
  ellipse(200, 200, 375, 375);
  fill(60, 0, 255);
  triangle(200, 104, 280, 280, 120, 280);
  fill(255, 255, 255);
  textSize(10);
  
  if (keyPressed){
 if(key == 'f'){
  fill(60, 200, 255);
  triangle(200, 104, 280, 280, 120, 280);
  fill(255, 5, 255);
  textSize(10);
  }
  }
  
  if (answer == 1) {
    text("YOU WILL HAVE", 176, 200);
    text("A GOOD DAY", 159, 229); 
    drawConfetti(300, 200, color(0,200,200));
  }
  if (answer == 2) {
  text("YOU ARE",176,200);
  text("AMAZING",159,229);
  drawConfetti(300, 200, color(0,200,200));
  }
  if (answer == 3){
  text("THERE IS MONEY", 176, 200);
  text("IN YOUR FUTURE", 159, 229);
    drawConfetti(300, 200, color(0,200,200));
  }
  if (answer == 4){
  text("NO ONE WILL", 176, 200);
  text("LIKE YOU", 159, 229);
   drawSad(300,100);
  }
  if (answer == 5){
  text("YES", 176, 200);
  drawConfetti(300, 200, color(0,200,200));}
  };
  
 mouseClicked = function(){
if(count ==0){
drawQuestion(200,185);
count=1;
}
else if (count==1){
drawQuestion(70,105);
count=2;
}
else if (count==2){
drawQuestion(300,45);
count=3;
}
else if (count==3){
drawQuestion(295,335);
count=4;
}
else{
drawQuestion(random(0,600),random(0,400));
drawQuestion(random(0,600),random(0,400));
drawQuestion(random(0,600),random(0,400));
drawQuestion(random(0,600),random(0,400));
drawQuestion(random(0,600),random(0,400));
drawQuestion(random(0,600),random(0,400));
}
    

 
  answer = round(random(1, 5));
};


var drawConfetti = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("🎉", fishX, fishY);
  };
  var drawSad = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("😒", fishX, fishY);
  };
  var drawQuestion = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
   text("❓❔❓",fishX,fishY);
  };