PVector mouseStart, mouseEnd, velocity;
boolean hasPressed;
float rotationPressed;
float testVelocity;

void playerShoot() {
  pushMatrix();
  translate(myBalls.get(0).pos.x, myBalls.get(0).pos.y);
  rotate(atan2(mouseY - myBalls.get(0).pos.y, mouseX - myBalls.get(0).pos.x) * int(!hasPressed));
  rotate(rotationPressed * int(hasPressed));
  translate(20, -6); // Incorporate length of mouse dragged
  imageMode(CORNER);
  if (myBalls.get(0).vel.x < 0.01 && myBalls.get(0).vel.y < 0.01) image(stick, 0, 0);
  imageMode(CENTER);
  popMatrix();
  println(myBalls.get(0).vel);
}

void mousePressed() { // Vx = V * cos(angle), Vy = V * sin(angle)
  if (!hasPressed) {
    hasPressed = true;
    rotationPressed = atan2(mouseY - myBalls.get(0).pos.y, mouseX - myBalls.get(0).pos.x);
    pushMatrix();
    translate(width/2, height-480/2);
    mouseStart = new PVector(mouseX, mouseY);
    popMatrix();
  }
}

void mouseReleased() {
  if (dist(mouseStart.x, mouseStart.y, mouseX, mouseY) > 10) {
    pushMatrix();
    translate(width/2, height-480/2);
    mouseEnd = new PVector(mouseX, mouseY);
    popMatrix();
    testVelocity = dist(mouseStart.x, mouseStart.y, mouseEnd.x, mouseEnd.y);
    velocity = new PVector(testVelocity * cos(rotationPressed), testVelocity * sin(rotationPressed));
    velocity.setMag(30);
    velocity.mult(-1);
    myBalls.get(0).vel = velocity;
  }
  hasPressed = false;
}
