/*char[][] theater = new char[9] [18];

for(int j = 0; j<theather.length; j++) {
  for(int i = 0; i < theather[j].length; i++) {
  
   print("Række: "+j+ "sædde "+i+" :" theather[j][i]);
   //theather[j][i]= 0;
  //print(theather[j][i]);
 }
}*/

//dobbelt array erklæret:
char[][] theater = new char[5][10];

void setup() {
  init();
  reserveSeat(4,7);
  printTheater();
}
void init(){
   for (int i = 0; i < theater.length; i++) {
    for (int j = 0; j < theater[i].length; j++ ) {
      theater[i][j]='O';
      //print(theater[i][j]);
  }
  println();
 }
}

void printTheater(){
   println();
   for (int i = 0; i < theater.length; i++) {
    for (int j = 0; j < theater[i].length; j++ ) {
      print(theater[i][j]);
    }
    println();
  }
} 
void reserveSeat(int row, int seat){
 //reservere række x plads x
  theater[row][seat]='X';
  
}
