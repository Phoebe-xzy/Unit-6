//Unit 6 Project

Star[] myStars;
int numstars;

color green = #6a994e;
color darkGreen = #386641;
color pink = #ffc2d1;
color darkPink = #ff8fab;
color purple = #1b1d2a;
color white = #242933;
color grey = #323031;
color black = #212529;
color lakeBlue = #0f1a2b;

void setup() {
  size(800, 800);
  background(0);
  colorMode(HSB);

  rectMode(CENTER);
  noStroke();
  

  numstars = 50;

  myStars = new Star[numstars];

  int i = 0;

  while (i < numstars) {
    myStars[i] = new Star();
    i ++;
  }
}



void draw() {
  int i = 0;
  background(0);

  while (i < numstars) {
    myStars[i].show();
    myStars[i].act();
    i++;
  }
  
  ground();
}


void buildings() {
  pushMatrix();
  translate(width/2 - 400, height/2 - 150);
  noStroke();
  fill(grey);
  rect(0, 0, 400, 180);


  popMatrix();
}

void ground(){
  fill(white);
  rect(width/2, height, width, 200);
}
