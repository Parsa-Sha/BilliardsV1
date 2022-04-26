// First player aim
// Balls move
// Evaluate
// Second player aim
// Balls move
// Evaluate

void game() {
  switch(gameState) {
    case FIRSTPLAYER:
    firstPlayer();
    break;
    case SECONDPLAYER:
    secondPlayer();
    break;
    case CALCULATE:
    calculate();
    break;
    case EVALUATE:
    evaluate();
    break;
    default:
    println("GAMESTATE ERROR. ERROR = " + gameState);
  }
  background(0, 0, 120);
}
