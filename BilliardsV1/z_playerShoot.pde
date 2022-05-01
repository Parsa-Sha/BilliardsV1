void playerShoot() {
  pushMatrix();
  translate(myBalls.get(0).pos.x, myBalls.get(0).pos.y);
  rotate(atan2(mouseY - myBalls.get(0).pos.y, mouseX - myBalls.get(0).pos.x));
  imageMode(CORNER);
  image(stick, 0, 0);
  imageMode(CENTER);
  popMatrix();
}
