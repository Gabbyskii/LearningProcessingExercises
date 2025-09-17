

class Seat {
  //Attributter, felter(fields), instansvariabler:
  int row;
  int seatNumber;
  int price;
  boolean payed;
  String customerName;
  

Seat (int row, int seatNumber) {
  this.row = row;
  this.seatNumber = seatNumber;
 }

void display(){
 ellipse(50+(this.seatNumber*30), 50+(this.row*30), 20, 20);
 }
 
void reserve(){
  println("Du er ved at booke sæde: " + this.row+ " sæde nummer: "+ this.seatNumber);
  this.payed = true;
  fill(155,0,155);
  display();
  
 }
 
}
