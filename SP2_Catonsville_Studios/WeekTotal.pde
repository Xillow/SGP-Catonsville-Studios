//Starts new class with the week total intact
//it makes the weekNumber na interger
//and it will add through the weektotal and adds the interger i
class weekTotal{
int weekNumber;

weekTotal(int i) {
  
   weekNumber = i;
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are greater than or equal to 90 are going to be an a, and prints the line A 
void gradeTracker(){
if(grades[weekNumber] >= 90){
textSize(30);
text("Grade: A", 380, 200);
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are greater than or equal to 80 or less than 90 are going to be an b, and prints the line b
if(grades[weekNumber] < 90 && grades[weekNumber] >= 80){
textSize(30);
text("Grade: B", 380, 200);
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are greater than or equal to 70 or less than or equal to 80 are going to be an c, and prints the line c 
if(grades[weekNumber] < 80 && grades[weekNumber] >= 70){
textSize(30);
text("Grade: C", 380, 200);
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are greater than or equal to 60 and less than 70 are going to be an d, and prints the line d
if(grades[weekNumber] < 70 && grades[weekNumber] >= 60){
textSize(30);
text("Grade: D", 380, 200);
}
//starts the function grade tracker and puts a condtional loop that if the grades and weeknumber are less than 60 are going to be an f, and prints the line f 
if(grades[weekNumber] < 60){
textSize(30);
text("Grade: F", 380, 200);
}
//adds a delay timer of .5 seconds or 500 milliseconds
delay(500);
}
//Starts the function account balance and has a .5 second delay 
void accountBalance(){
  textSize(30);
  text("Bank Account Balance = " +"$" + wealth[weekNumber], 380, 250);
  delay(500);
}
//Starts the function happiness tracker which is used to track your happiness through out the week
void happinessTracker(){
if(happiness[weekNumber] >= 90){
textSize(30);
text("I am having the time of my life!", 380, 300);
}
//if your happiness is less than 90 and greater than or equal to 80 it prints line you are very happy
if(happiness[weekNumber] < 90 && happiness[weekNumber] >= 80){
textSize(30);
text("You are very happy", 380, 300);
}
//if your happiness is less than 80 or greater than or equal to 70 then it prints the prints you're in a good state of mind
if(happiness[weekNumber] < 80 && happiness[weekNumber] >= 70){
textSize(30);
text("You are in a good state of mind",  380, 300);
}
//if your happiness is less than 70 or greater than and equal to 60 then it prints the line you are not in a good state of mind
if(happiness[weekNumber] < 70 && happiness[weekNumber] >= 60){
textSize(30);
text("you are not in a good state of mind",  380, 300);
}
//if your happiness is lower than 60 it prints the line you are depressed and need a doctor"
if(happiness[weekNumber] < 60){
textSize(30);
text("you are depressed and need a doctor", 380, 300);
}
}

}