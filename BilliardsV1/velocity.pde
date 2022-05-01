PVector mouseStart, mouseEnd, velocity;
boolean hasPressed;

void mousePressed() {
  if (!hasPressed) {
    hasPressed = true;
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
    velocity = mouseEnd.sub(mouseStart);
    velocity.setMag(25);
    velocity.mult(-1);
    myBalls.get(0).vel = velocity;
    println(velocity);
  }
  hasPressed = false;
}
