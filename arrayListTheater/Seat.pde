

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
 ellipse(this.seatNumber*20, this.row*40, 10, 10);
 }
 
}
