//dobbelt array erklæret:
Seat[][] theater = new Seat[5][10];

void setup() {
  size(200,200);
  
  init();
  reserveSeat(4,7);
  printTheater();
  //display();
  
}
void init(){
   for (int i = 0; i < theater.length; i++) {
    for (int j = 0; j < theater[i].length; j++ ) {
      //theater[i][j]='O';
      theater[i][j]= new Seat(i,j);
     
  }

 }
}

void printTheater(){
   println();
   for (int i = 0; i < theater.length; i++) {
    for (int j = 0; j < theater[i].length; j++ ) {
      //println(theater[i][j]);
      theater[i][j].display();
    }
    println();
  }
} 
void reserveSeat(int row, int seat){
 //reservere række x plads x
 println("Du er ved at booke sæde: " + theater[row][seat].row+ " sæde nummer: "+ theater[row][seat].seatNumber);
 theater[row][seat].payed = true;
 // theater[row][seat]='X';
  
}
