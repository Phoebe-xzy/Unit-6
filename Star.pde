class Star {
  //instance variabbles or fields

  float x, y, vx, vy, size;

  //constructor: speical function that defines how
  //        an object of this class is born
  //        Defines initial values for this fields

  Star() {
    x = random(0, width);
    y = random(0, height);
    vx = 0;
    vy = random(1, 5);
    size = vy; //depth conception
  }

  //behaviour function: these define what a star does

  void show() {
    fill(255);
    square(x, y, size);
  }

  void act() {
    y = y + vy;
    if (y > height + size) {
      y = -size;
    }
  }
}
