void playerShoot() {
  pushMatrix();
  translate(mouseX, mouseY+6);
  rotate(atan2(mouseY - myBalls.get(0).pos.y, mouseX - myBalls.get(0).pos.x));
  imageMode(CORNER);
  image(stick, 0, 0);
  imageMode(CENTER);
  popMatrix();
}
