ArrayList<Ball> myBalls;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEWON = 3;
final int GAMEOVER = 4;
int mode = INTRO;

final int FIRSTPLAYER = 0;
final int SECONDPLAYER = 1;
final int CALCULATE = 2;
final int EVALUATE = 3;
int gameState = FIRSTPLAYER;



void setup() {
  size(960, 540);
  myBalls = new ArrayList<Ball>();
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
