//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are greater than or equal to 90 are going to be an a, and prints the line A
void gradeTrackerTotal(){
if(totalGrades >= 90){
textSize(20);
text("Grade: A", 400, 400);
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are greater than or equal to 80 or less than 90 are going to be an b, and prints the line b
if(totalGrades < 90 && totalGrades >= 80){
textSize(20);
text("Grade: B", 322, 400);
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are greater than or equal to 70 or less than or equal to 80 are going to be an c, and prints the line c 
if(totalGrades < 80 && totalGrades >= 70){
textSize(20);
text("Grade: C", 322, 400);
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are greater than or equal to 60 and less than 70 are going to be an d, and prints the line d
if(totalGrades < 70 && totalGrades >= 60){
textSize(20);
text("Grade: D", 322, 400);
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are less than 60 are going to be an f, and prints the line f 
if(totalGrades < 60){
textSize(20);
text("Grade: F", 322, 400);
}
//adds a delay timer of .5 seconds or 500 milliseconds
delay(500);
}
//Starts the function account balance and has a .5 second delay 
void accountBalanceTotal(){
  textSize(20);
  text("Account Balance = " + totalWealth, 400, 450);
  delay(500);
}
//Starts the function happiness tracker which is used to track your happiness through out the week
void happinessTrackerTotal(){
if(totalHappiness >= 90){
textSize(20);
text("You are having the time of your life!", 400, 500);
}
//if your happiness is less than 90 and greater than or equal to 80 it prints line you are very happy
if(totalHappiness < 90 && totalHappiness >= 80){
textSize(20);
text("You are very happy", 322, 500);
}
//if your happiness is less than 80 or greater than or equal to 70 then it prints the prints you're in a good state of mind
if(totalHappiness < 80 && totalHappiness >= 70){
textSize(20);
text("You are in a good state of mind", 322, 500);
}
//if your happiness is less than 70 or greater than and equal to 60 then it prints the line you are not in a good state of mind
if(totalHappiness < 70 && totalHappiness >= 60){
textSize(20);
text("you are not in a good state of mind", 322, 500);
}
//if your happiness is lower than 60 it prints the line you are depressed and need a doctor"
if(totalHappiness < 60){
textSize(20);
text("you are depressed and need a doctor", 322, 400);
}
}