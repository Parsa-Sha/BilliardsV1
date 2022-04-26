final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEWON = 3;
final int GAMEOVER = 4;
int mode = INTRO;

void setup() {
  size(960, 540);
}

void draw() {
  switch (mode) {
  case INTRO:
    intro();
    break;
  case GAME:
    game();
    break;
  case PAUSE:
    pause();
    break;
  case GAMEWON:
    gamewon();
    break;
  case GAMEOVER:
    gameover();
    break;
  default:
    println("MODE ERROR. MODE = " + mode);
  }
}
