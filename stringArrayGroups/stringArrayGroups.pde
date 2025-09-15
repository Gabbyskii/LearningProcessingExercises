size(400,400);

String[] groupA = {"Nigeria", "Ghana", "Denmark", "England"};

//for (int i = 0; i <= groupA.length-1; i++){
// println((i+1)+ ". " + groupA[i]);
//}


int i = 0;
int space = 5;
//loop uden en tæller:
for (String countryName:groupA){
  fill(255);
 //println(countryName);
 rect(20, 20+i*(40+space), 150, 40);
 fill(0);
 text(countryName,20, 20+i*(40+space), 150, 40);
 
 i++;
 
 //for tal foran country - forkert tho:
 //int counter = counter +1; ????
 // println(counter + ". " + countryName);
} 
