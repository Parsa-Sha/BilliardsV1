PVector mouseStart, mouseEnd;
boolean hasPressed;

void mousePressed() {
  if (!hasPressed) {
    hasPressed = true;
    pushMatrix();
    translate(width/2, height/2);
    mouseStart = new PVector(mouseX, mouseY);
    popMatrix();
  }
}

void mouseReleased() {
  if (dist(mouseStart.x, mouseStart.y, mouseX, mouseY) > 10) {
    pushMatrix();
    translate(width/2, height/2);
    mouseEnd = new PVector(mouseX, mouseY);
    popMatrix();
    myBalls.get(0).pos = mouseEnd.sub(mouseStart);
    println(mouseStart.sub(mouseEnd));
  }
  hasPressed = false;
}
