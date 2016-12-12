
class textBoxButton {
  //Members - variables of the object the class creates.(attributes) 
  float xPos, yPos, textBoxWidth, textBoxHeight, dist ;
  int switchCounter;
  int text;
  boolean screenChang;
  String optionName;
  PImage img0, img1, img2, img3;
  weekTotal week1, week2, week3, week4, week5, week6, week7, week8, week9, week10, week11, week12, week13, week14, week15;



  textBoxButton(float a, float b, float c, float d, int t) {  
    xPos = a;
    yPos = b;
    textBoxWidth = c;
    textBoxHeight = d;
    text = t;
    screenChang = false;
    week1 = new weekTotal(0);
    week2 = new weekTotal(1);
    week3 = new weekTotal(2);
    week4 = new weekTotal(3);
    week5 = new weekTotal(4);
    week6 = new weekTotal(5);
    week7 = new weekTotal(6);
    week8 = new weekTotal(7);
    week9 = new weekTotal(8);
    week10 = new weekTotal(9);
    week11 = new weekTotal(10);
    week12 = new weekTotal(11);
    week13 = new weekTotal(12);
    week14 = new weekTotal(13);
    week15 = new weekTotal(14);
 
  }
  /*
 drawtTextBox - draws
   input: mousePressed
   output:mainGameSwitchNum
   */
  void drawTextBox(int switchNum) {
  // println(mainGameSwitchNum);
    textRepo(switchNum);
    textSize(32);
    strokeWeight(5);
    textAlign(CENTER, CENTER);

    if ( screenState == 2) {
      if (mousePressed == true &&(mouseButton == LEFT)) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {  
          if (mainGameSwitchNum != 5)
            mainGameSwitchNum++;
          
          delay(100);
        }
      }
    } 
    switch (switchNum) {
    case 0:
      
      img0 = loadImage("dorm.jpg");
      background(img0);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);
      break;

    case 1:

      img0 = loadImage("dorm.jpg");
      background(img0);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);


    case 2:


      img1 = loadImage("Class sucks.jpg");

      background(img1);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);

      break;

    case 3:


      img2 = loadImage("True-Grits.png");

      background(img2);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);


      break;
    case 4:

      img3 = loadImage("jobless-rate-unemployment-jobs.jpg");
      background(img3);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);

      break;

    case 5:
      img4 = loadImage("Map.png");

      background(img4);
      screenState = 3;

      break;
    }
    if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
      mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) { 
      fill(255, 255, 15);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);
    }
  }


  void drawEllipseButton() {

    ellipse(xPos, yPos, textBoxWidth, textBoxHeight);

    textRepo(0);
    if ((mousePressed == true) && ((textBoxWidth + textBoxHeight)/2 == dist)) {
    }
  }
  /*
 drawPhoneUI - displays the players grades, wealth and happiness    
   input: Mouse Buttons
   output: phoneUIState, Grades, Wealth, Happiness, totalGrades,totalWealth, totalHappiness 
   */
  void drawPhoneUI(int switchNum) {
    switch(switchNum) {
    case 0:
      fill(255);
      rectMode(CORNER);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);  
      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState++;
          
          delay(100);
        }
      }
      break;


    case 1:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 1 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week1.happinessTracker();
      week1.accountBalance();
      week1.gradeTracker();


      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);

      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(100);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
          
        }
      }
      break;
      
    case 2:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 2 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week2.happinessTracker();
      week2.accountBalance();
      week2.gradeTracker();

     textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
    case 3:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 3 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week3.happinessTracker();
      week3.accountBalance();
      week3.gradeTracker();

      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);

      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
    case 4:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 4 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week4.happinessTracker();
      week4.accountBalance();
      week4.gradeTracker();

     textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
    case 5:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 5 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week5.happinessTracker();
      week5.accountBalance();
      week5.gradeTracker();

      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
      
          case 6:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 6 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week6.happinessTracker();
      week6.accountBalance();
      week6.gradeTracker();

     textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
    case 7:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 7", 640, 90);
      textAlign(LEFT, BOTTOM);
      week7.happinessTracker();
      week7.accountBalance();
      week7.gradeTracker();

    textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
    case 8:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 8 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week8.happinessTracker();
      week8.accountBalance();
      week8.gradeTracker();

     textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
    case 9:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 9 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week9.happinessTracker();
      week9.accountBalance();
      week9.gradeTracker();

     textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;

    case 10:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 10 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week10.happinessTracker();
      week10.accountBalance();
      week10.gradeTracker();

      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;

  case 11:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 11 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week11.happinessTracker();
      week11.accountBalance();
      week11.gradeTracker();

      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;

case 12:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 12 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week12.happinessTracker();
      week12.accountBalance();
      week12.gradeTracker();

      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;

case 13:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 13 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week13.happinessTracker();
      week13.accountBalance();
      week13.gradeTracker();

      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;

case 14:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 14 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week14.happinessTracker();
      week14.accountBalance();
      week14.gradeTracker();

      fill(0, 0);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);

      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;

case 15:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text(" Week 15 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week15.happinessTracker();
      week15.accountBalance();
      week15.gradeTracker();

      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text(">", 740, 83);
      //  rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 729 && mouseX <= 751 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState++;
        }
      }
     fill(0);
      textSize(40);
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;


    case 16:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      stroke(0);
      strokeWeight(8);
      rect(640, 480, 650, 960);
      strokeWeight(1);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      strokeWeight(2);
      stroke(0);
      fill(255);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(895, 30, 45, 15);
      fill(0);
      rect(920, 30, 15, 15);
      textSize(12);
      text("80 %", 930, 37);
      textAlign(CENTER, TOP);
      textSize(32);
      text("Semester", 640,80);
      text("Total", 640, 100);
      textAlign(LEFT, BOTTOM);

      gradeTrackerTotal();
      accountBalanceTotal();
      happinessTrackerTotal();


      textSize(64);
      textAlign(LEFT, TOP);
      text("X", xPos, yPos, textBoxWidth, textBoxHeight);


      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState--;
          delay(2000);
        }
      }
      
      fill(0);
      textSize(40);
      textAlign(CENTER, TOP);
      text("<", 530, 83);
      if (mousePressed == true) {
        if (mouseX >= 518 && mouseX <= 540 &&
          mouseY >= 97 && mouseY <= 120) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
    }
  }





  void textRepo(int text) {
    switch(text) {
      case 0:
      optionName = "its the first day of school and you are excited to start your day at your new university!";
      break;
      case 1:
      optionName = "This is one of the places that you can eat on campus";
      break;
      case 2:
      optionName = "Now its time for your brand new job! (and you remembered your glasses)";
      break;
      case 3:
      optionName = "its the first day of school and you are excited to start your day at your new university!";
      break;
    }
  }
}