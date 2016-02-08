float earHeight = 80;
float earWidth = 75;
int x = 30;
int y = 15;

void setup(){
size(500, 500);
background(13, 250, 188);
}

void drawCat(){
  if(mousePressed == true) {
    fill(183, 50, 174);
  }
  else{
    fill(255, 126, 212);
  }
}

void eyeColor(){
  if(mousePressed == true) {
    fill(12, 235, 290);
  }
  else{
    fill(183, 229, 83);
  }
}


void draw(){
 


noStroke();
background(13, 250, 188);

drawCat();
//neck and body
noStroke();
//fill(255, 126, 212);
//neck
quad(235, 390, 265, 390, 265, 500, 235, 500);
//shoulders
beginShape();
vertex(250, 460); 
vertex(470, 370);
vertex(420, 500);
vertex(80, 500);
vertex(30, 370);
vertex(250, 460);
endShape(CLOSE);

if (mouseY <= 160 && mouseX <= 150){
  earHeight = mouseX;
  earWidth = mouseY;
}

//Head
beginShape();
vertex(75, 310);
vertex(earHeight, earWidth);
vertex(150, 160);
vertex(250, 135);
vertex(350, 160);
vertex(earHeight + 350, earWidth);
vertex(425, 310);
vertex(250, 420);
endShape(CLOSE);


//eye whites
noStroke();
fill(255, 255, 255);
//left eye
bezier(125, 227, 155, 206, 175, 206, 205, 227);
bezier(125, 227, 155, 248, 175, 248, 205, 227);
//right eye
bezier(295, 227, 325, 206, 345, 206, 375, 227);
bezier(295, 227, 325, 248, 345, 248, 375, 227);
//center eye
bezier(210, 180, 240, 159, 260, 159, 290, 180);
bezier(210, 180, 240, 201, 260, 201, 290, 180);


//eyeliner
strokeWeight(3.2);
stroke(0, 0, 0);
bezier(127, 227, 155, 206, 175, 206, 202, 227);
bezier(297, 227, 325, 206, 345, 206, 373, 227);
bezier(212, 180, 240, 159, 260, 159, 288, 180);
//wings
strokeWeight(2.5);
//left eye
line(127, 227, 120, 220);
//right eye
line(373, 227, 380, 220);
//center
line(212, 180, 205, 173);
line(288, 180, 295, 173);

//fun stuff
if (keyPressed){
  x = 50;
  y = 35;
}
else {
  x = 30;
  y = 15;
}

eyeColor();
//pupils
noStroke();
//fill(183, 229, 83);
//left
ellipse(165, 227, x, y);
//right
ellipse(335, 227, x, y);
//center
ellipse(250, 180, x, y);


//nose and mouth
triangle(235, 300, 265, 300, 250, 320);
stroke(255, 62, 214);
strokeWeight(3);
noFill();
//right
bezier(250, 320, 257, 330, 268, 330, 275, 325);
//left
bezier(225, 325, 232, 330, 243, 330, 250, 320);


}