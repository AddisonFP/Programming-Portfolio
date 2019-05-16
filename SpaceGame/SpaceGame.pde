// Space Game By Addison Powell
Ship ship;
Timer timer;
ArrayList<Asteroid> asteroids;
ArrayList<Laser> lasers;
int score = 0;
int z = int(random(20, 50));
int hp = 100;
void setup() {
  size(500, 800);
  background(0);
  timer = new Timer (1000);
  lasers = new ArrayList<Laser>();
  asteroids = new ArrayList<Asteroid>();
  ship = new Ship(mouseX, mouseY, 5);
}
void draw() {
  background(0);
  noCursor();
  ship = new Ship(mouseX, mouseY, 5);
  if (timer.isFinished()) {
    asteroids.add(new Asteroid(int(random(width)), -50, z, int(random(40, 55)), z/2, 2));
    timer.start();
  }
  // Add/Remove lasers/asteroids
  for (int i = 0; i<lasers.size(); i++) {
    lasers.get(i).fire();
    lasers.get(i).display();
    if (lasers.get(i).reachedTop()) {
      lasers.remove(i);
    }
  }
  for (int i = 0; i<asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).display();
    if (asteroids.get(i).reachedBottom()) {
      asteroids.remove(i);
    }
    //colision detection
    for (int j=0; j<lasers.size(); j++) {
      if (dist(lasers.get(j).x, lasers.get(j).y, asteroids.get(i).x, asteroids.get(i).y)<asteroids.get(i).r) {
        score ++;
        lasers.remove(lasers.get(j));
        asteroids.remove(asteroids.get(i));
    }
      if (dist(asteroids.get(i).x, asteroids.get(i).y, mouseX, mouseY)<asteroids.get(i).r + ship.r) {
        asteroids.remove(asteroids.get(i));
        score --;
        hp = hp - 10;
      }
    }
  }
  ship.display();
  textSize(24);
  fill(255);
  text("Score: " + score, 50, 50);
  text("Health: " + hp, 300,50);
}
void mousePressed() {
  lasers.add(new Laser(ship.x, ship.y, 10));
}
