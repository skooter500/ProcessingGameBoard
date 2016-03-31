void setup()
{
  size(500, 500);
  
  ship = new Ship(width / 2, height / 2);
  gameBoard = new GameBoard(50, 50);  
}

Ship ship;
GameBoard gameBoard;

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
} 

void draw()
{
  background(0);
  gameBoard.update();
  gameBoard.render();
  
  ship.update();
  ship.render();
  
  // Now turn off a cell on the gameboard if the player is over it!
  int row = (int) (ship.pos.y / gameBoard.cellHeight);
  int col = (int) (ship.pos.x / gameBoard.cellWidth);
  gameBoard.grid[row][col]= false;
  
  
}