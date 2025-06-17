class Ripple {
  //instance variables or fields
  float x, y, size, alpha;

  //constructor
  Ripple() {
    x = random(width);
    y = random(600, height);
    size = random(200);
  }

  //behaviour functions
  void show() {
    noFill();
    strokeWeight(2);
    stroke(255);
    ellipse(x, y, size, size/2);
  }

  void act() {
    size = size + 3;
    if (size >= 100) {
      x = random(width);
      y = random(600, height);
      size = 0;
    }
  }
}
