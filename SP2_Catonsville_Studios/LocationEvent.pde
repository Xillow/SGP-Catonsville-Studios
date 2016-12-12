//[] classBox = new int [10] 
float xPos, yPos, textBoxWidth, textBoxHeight, dist ;
PImage img0, img1, img2, img3;

void locationEvents() {
  if (mapLocationNumber == 4) {
    img1 = loadImage("Class Sucks.png");
    background(img1);
    fill(255);
    rect(xPos, yPos, textBoxWidth, textBoxHeight);
    fill(0);
    text("Congrats, you went to class!! I hope you paid attention.", xPos, yPos, textBoxWidth, textBoxHeight);

    if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
      mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
      mapLocationNumber = 0;
      screenState = 3;
    }
     }
  if (mapLocationNumber == 5) {
    img0 = loadImage("dorm.jpg");
    background(img0);
    fill(255);
    rect(xPos, yPos, textBoxWidth, textBoxHeight);
    fill(0);
    text("Hey this is your dorm... lol", xPos, yPos, textBoxWidth, textBoxHeight);

    if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
      mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
      mapLocationNumber = 0;
      screenState = 3;
    }
  }
}