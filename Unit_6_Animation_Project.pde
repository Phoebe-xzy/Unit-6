//Unit 6 Project

Star[] myStars;
int numstars;

Ripple [] myRipples;
int numRipples;

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
  
  //Ripples
  numRipples = 200;
  myRipples = new Ripple[numRipples];
  int k = 0;
  while (k < numRipples){
    myRipples [i] = new Ripple();
    k++;  
  }
  
  
}



void draw() {
  int i = 0;
  int j = 0;
  background(0);
  ground();

  while (i < numstars) {
    myStars[i].show();
    myStars[i].act();
    i++;
  }
  
  while (j < numRipples) {
    myRipples [j] = new Ripple();
    myRipples[j].show();
    myRipples[j].act();
    j++;
  }
  
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
