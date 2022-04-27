ArrayList<Ball> myBalls;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEWON = 3;
final int GAMEOVER = 4;
int mode = INTRO;

final int PLAYERBEGIN = 0;
final int PLAYERPLACE = 1;
final int PLAYERSHOOT = 2;
final int CALCULATE = 3;
final int EVALUATE = 4;
int gameState = PLAYERPLACE;

PImage table;

void setup() {
  size(960, 540);
  
  table = loadImage("images\\EightBallTable.png");
  
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
