class Ship {
  // member variables
  int x, y, r, liv;
  float hp, sp;
  color c;
  boolean alive;
  // constructor
  Ship(int x, int y, int r) {
    this.x = x;
    this.y = y;
    this.r = r;
    hp = 100.0;
    liv = 3;
    alive = true;
  }
  // display method
  void display() {
    strokeWeight(1);
    fill(100);
    rect(x-2, y-40, 4, 25);
    rect(x-28, y-3, 8, 35);
    rect(x+20, y-3, 8, 35);
    rect(x-20, y+5, 40, 15);
    triangle(x, y-20, x-6, y-5, x+6, y-5);
    fill(255, 170, 0);
    triangle(x, y-7, x-20, y+5, x+20, y+5);
    triangle(x+20, y+5, x+20, y+20, x+33, y+20);
    triangle(x-20, y+5, x-20, y+20, x-33, y+20);
    quad(x-4, y+5, x+4, y+5, x+15, y+19, x-15, y+19);
    fill(200);
    triangle(x+20, y+20, x+20, y+27, x+33, y+20);
    triangle(x-20, y+20, x-20, y+27, x-33, y+20);
    fill(0);
    stroke(150);
    quad(x-15, y+20, x+15, y+20, x+8, y+27, x-8, y+27);
    stroke(0);
    triangle(x, y+15, x-3, y+19, x+3, y+19);
  }
  // behavior method
}
