 //<>// //<>//
/*************
 **  File: SP2_Catonsville_Studios.pde
 **  Author:Catonsville Studios
 **  Date: 10/14/16
 **  Class: COMP 101 
 **  Section: Pop
 **  Email: mabrown1@umbc.edu
 **  Description:
 **  The start screen is finished.
 **  Game progresses to the map.
 **  The Rectangle at the top right is the phone UI.
 **  The Phone UI has week totals and semester total.
 */


int [] happiness = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100} ; 
int [] wealth = {1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}; 
int [] grades = {70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70,}; 
int totalHappiness = ((happiness[0] + happiness[1] + happiness[2] + happiness[3] + happiness[4] + happiness[5] + happiness[6] + happiness[7] + happiness[8] + happiness[9] + happiness[10] + happiness[11] + happiness[12] + happiness[13] + happiness[14])/15);
int totalWealth = (wealth[0] + wealth[1] + wealth[2] + wealth[3] + wealth[4] + wealth[5] + wealth[6] + wealth[7] + wealth[8] + wealth[9] + wealth[10] + wealth[11] + wealth[12] + wealth[13] + wealth[14]);
int totalGrades = ((grades[0] + grades[1] + grades[2] + grades[3] + grades[4] + grades[5] + grades[6] + grades[7] + grades[8] + grades[9] + grades[10] + grades[11] + grades[12] + grades[13] + grades[14])/15);
float diffAdd = 1; 
float diffSub = 1; 
PImage img4;


int mainGameSwitchNum = 0;
PImage startScreen; 
float screenState = 0; 
startButtons buttonSS0 = new startButtons(750, 250, 300, 70, 0); 
startButtons buttonSS1 = new startButtons(750, 350, 300, 70, 1); 
startButtons buttonSS2 = new startButtons(750, 450, 300, 70, 2); 
startButtons buttonSS3 = new startButtons(750, 550, 300, 70, 3);
textBoxButton buttonMG0 = new textBoxButton(200, 700, 800, 200, mainGameSwitchNum); 
textBoxButton phoneUI = new textBoxButton(1190, 50, 50, 75, 0);

int phoneUIState = 0;
void setup() { 
  size(1280, 960); 
  frameRate(60);
}

void draw() { 
  fill(255);
  println(buttonMG0);
  //println(mouseX, mouseY);
  //println(phoneUIState);
  if (screenState == 0 || screenState == 1) {
    startScreen(); 
    //mainGame);
    //text(diffAdd, 250, 100);
    //text(diffSub, 500, 100);
    
  }
  if (screenState == 2) {
    background(255);
    buttonMG0.drawTextBox(mainGameSwitchNum);
  }

  
  if(screenState == 3 ){
          img4 = loadImage("Map.png");

      background(img4);
 
  }
    if(screenState >= 3){
     phoneUI.drawPhoneUI(phoneUIState);
     daysAndTime();
     locationEvents();
  }
}
void startScreen() { 
  startScreen = loadImage("StartScreen.png");
  background(startScreen);
  buttonsStartScreen();
}
void keyPressed() {
  if (key == 's') {
          save("UI.png");
  }
  }

void buttonsStartScreen() {
  buttonSS0.startScreen(0);  
  buttonSS1.startScreen(1);
  buttonSS2.startScreen(2);
  buttonSS3.startScreen(3);
}