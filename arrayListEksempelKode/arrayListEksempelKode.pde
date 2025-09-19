String[] groupMembers = new String[4];


void setup() {
groupMembers[0] = "Gabby";
groupMembers[1] = "Melissa";
groupMembers[2] = "Jasmin";
groupMembers[3] = "Zainab";

String gm = getRandomGroupMember();
println(gm);
println(getLastGroupMember());
}

//Skriv en metode der kan returnere et tilfældigt element fra listen  

String getRandomGroupMember(){
int ranNum = (int)random(groupMembers.length);
return groupMembers[ranNum];
}

//Skriv en metode der kan returnere det sidste element i listen  

String getLastGroupMember(){
int index = groupMembers.length-1;
return groupMembers[index];
}
