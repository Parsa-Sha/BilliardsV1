// First player aim
// Balls move
// Evaluate
// Second player aim
// Balls move
// Evaluate

void game() {
  
  println("working");
  image(table, 0, 0);
  
  switch(gameState) {
    case PLAYERBEGIN:
    playerBegin();
    break;
    case PLAYERPLACE:
    playerPlace();
    break;
    case PLAYERSHOOT:
    playerShoot();
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
}
