
//dobbelt array erklæret:
Seat[][] theater = new Seat[5][10];
ArrayList<Seat> bookings = new ArrayList();

void setup() {
  size(400,400);
  init();
  reserveSeat(4,7);
  reserveSeat(2,5);
  reserveSeat(3,6);
  printTheater();
  
  bookings = new ArrayList();
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
  theater[row][seat].reserve();
  // theater[row][seat]='X';
  
  bookings.add(theater[row][seat]);
  
 //show bookings
  for(Seat s:bookings){
    println(s.seatNumber+ "-" + s.row);
  }
  
  for(int i = 0; i < bookings.size(); i++){
  
  }
  
  println("Første booking: "+ bookings.get(0));
 
 }
