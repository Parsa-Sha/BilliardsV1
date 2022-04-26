abstract class Ball {
  PVector loc;
  PVector vel;
  int id;
  
  Ball() {
    loc = new PVector(0, 0);
    vel = new PVector(0, 0);
    id = 3;
  }
  
  Ball(int identification, PVector location) {
    loc = location;
    vel = new PVector(0, 0);
    id = identification;
  }
  
  void act() {
    vel.setMag(vel.mag()*0.3);
  }
}
