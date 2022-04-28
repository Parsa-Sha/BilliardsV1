abstract class Ball {
  PVector pos;
  PVector vel;
  int id;
  
  Ball() {
    pos = new PVector(0, 0);
    vel = new PVector(0, 0);
    id = 3;
  }
  
  Ball(int identification, PVector location) {
    pos = location;
    vel = new PVector(0, 0);
    id = identification;
  }
  
  void show() {
    image(ballImages[id], pos.x, pos.y);
  }
  
  void act() {
    pos.add(vel);
    vel.setMag(vel.mag()*0.3);
  }
}
