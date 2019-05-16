class Laser {
  // member variables
  int x, y, w, h;
  float spd;
  // constructor
  Laser(int x, int y, float spd) {
    this.x=x;
    this.y=y;
    this.spd=spd;
  }
  // display method
  void display() {
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(x, y, 3, 15);
    rectMode(CORNER);
  }
  void fire() {
    y -= spd;
  }
  boolean reachedTop() {
    if (y < -50) {
      return true;
    } else {
      return false;
    }
  }
}
