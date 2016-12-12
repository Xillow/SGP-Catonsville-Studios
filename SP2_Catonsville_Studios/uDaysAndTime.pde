//map locations: library1, commons2, dininghall3, dorm4, class5, work6      (commons and dhall could both be set to 2)
//800 = 0800 as in 8:00 AM. at 2400 AKA 12:00 AM the day resets.
//values set for timeEllapse = the amount of time the player spends each hour they click
//on each location.



void daysAndTime(){
  
if(mapLocationNumber == 1){
  timeEllapse = 200;
}

if(mapLocationNumber == 2 || mapLocationNumber == 3 || mapLocationNumber == 4){
  timeEllapse = 100;
}

if(mapLocationNumber == 5){
  timeEllapse = 200;
}

//  ^^^the 3 if statements above set the amount of time the player spends in each area, we can change these later

if(mapLocationNumber == mapLocationNumber+1 || mapLocationNumber == mapLocationNumber-1){
time = time + timeEllapse;
}

//the above line adds time onto the day.


//IF WE'RE NOT DOING DYNAMIC HOURS, JUST MAKE REMOVE timeEllapse variable and
//MAKE THE IF STATEMENT ABOVE EQUAL TIME = TIME + 100 (or other value).


//below if statement says once it = midnight the player goes to sleep and it becomes the
//next day.. the amount of time the player sets over is added onto the next day to 'make up for sleep'
if(time >= 2400){
  day++;
  time = 800 + (time-2400);
}

if(day > 7){
//week++;
day = 1;
}
//Above if statement only shows time if the player is on their phone.
if(phoneUIState >= 1){
     //textfont??
     textSize(16);
     text("time: " + time + ":00", 600, 25);
     text("day" + day, 700, 25);        //the X and Y values for these may need to change, they may not display time and day-
}                               //-properly on phone UI.
}
