//Unit 6 Project

color green = #6a994e;
color darkGreen = #386641;
color pink = #ffc2d1;
color darkPink = #ff8fab;
color purple = #7b2cbf;
color white = #f5f3f4;
color grey = #323031;
color black = #212529;

void setup(){
  size(800, 800);
  background(black);
  buildings();



}



void draw(){



}

void buildings(){
  pushMatrix();
  translate(width/2 - 400, height/2 - 150);
  noStroke();
  fill(grey);
  rect(0, 0, 400, 180);
  

  popMatrix();
}
