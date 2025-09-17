import java.util.ArrayList;

 ArrayList<String> names = new ArrayList();
 //ArrayList<Integer> ages = new ArrayList();

 //studieGruppe = new ArrayList();
names.add("Melissa");
names.add("Jasmin");
names.add("Zainab");
names.add("Gabriella");

/*
ages.add();
ages.add();
ages.add();
ages.add();
*/

void setup() {
for (int i = 0; i < names.size(); i ++) {
 println(names.get(i));
}
String studyNames = getName(2); 
println(studyNames);

String getName(int index){
 return names.get(1);
 }
}
