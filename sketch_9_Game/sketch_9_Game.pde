float playerX = 400; // creates all the variables
float playerY = 600;
float enemyX = 400;
float enemyY = 0;
float playerDiameter = 100;
float enemyDiameter = 200;
float distance;
int score;
boolean scoreOn = true;
boolean gameOver = false;
boolean enemyDown = true;
PImage background;
PImage player;
PImage enemy;
PImage gameover;
void setup() {
  size(800, 800);
  background = loadImage("background.jpg"); // gets the images from a folder located in the same directory as the project
  background.resize(width, height);
  player = loadImage("player.png");
  player.resize(100, 100);
  enemy = loadImage("enemy.png");
  enemy.resize(200, 200);
  gameover = loadImage("game over.jpg");
  gameover.resize(1400, 1100);
}
void draw() {
  image(background, 0, 0); // sets the background to the image assigned to the "background" variable
  //------------------------------------------------
  image(player, playerX-50, playerY-50); // assigns the images to the player and the enemies
  image(enemy, enemyX-100, enemyY-100);
  //----------------------------------------------
  if (enemyY >=800) { // if the enemy reaches the bottom of the screen it sets the enemy back to the top with a random X value and increases the score by 1
    enemyY = 0; 
    enemyX = random(100, 700);
    if (gameOver == false) {
      score += 1;
    }
  }
  if (enemyDown == true) { // causes the enemies to fall to the bottom of the screen
    enemyY += 4;
  }
  //--------------------------------------------
  if (keyPressed == true) { // moves the player left and right
    if (key == 'a' || key == 'A') {
      playerX -=3;
    }
    if (key == 'd'|| key == 'D') {
      playerX +=3;
    }
  }
  //-------------------------------------------
  distance = dist(playerX, playerY, enemyX, enemyY); // collision detection
  if ((playerDiameter + enemyDiameter)/2 >= distance) {
    gameOver = true;
  }
  //----------------------------------------
  if (gameOver == true) { // if the "gameOver" tag is true it displays the game over screen
    image(gameover, 0, 0);
    fill(#dd2a2a);
    textSize(70);
    text("Game Over", 150, 200);  
    text("Press  R  To Restart", 100, 600);
    text("your score is :", 100, 400);
    text(score, 600, 400);
    scoreOn = false;
  }
  //----------------------------------------
  if (keyPressed == true) { // if the R key is pressed on the game over screen the game is reset
    if ( key == 'r'|| key == 'R') {
      if (gameOver == true ) {
        enemyY = 0;
        enemyX = 400;
        playerX = 400;
        gameOver = false;
        scoreOn = true;
        score = 0;
      }
    }
  }
  //-------------------------------------
  if (scoreOn == true) { // dispplays the score in the top left corner
    fill(255);
    textSize(70);
    text(score, 100, 100);
  }
  //---------------------------------------------
  if (score >= 5) { // increases enemy fall speed when a certain score is reached
    enemyY += 1;
  }
  if (score >= 10) {
    enemyY +=1;
  }
  if (score >= 15) {
    enemyY +=1;
  }
  if (score >= 20) {
    enemyY +=1;
  }
  //-------------------------------------------
  if (playerX <= 50) { // stops the player going off the canvas
    playerX = 50;
  }
  if (playerX >=750) {
    playerX = 750;
  }
}
