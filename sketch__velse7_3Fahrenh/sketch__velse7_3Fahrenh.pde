// Function to convert Fahrenheit to Celsius
float tempConverter(float F) {
  float C = (F - 32) * (5.0/9.0);
  return C;
}
void setup() {
  float fahrenheit = 100;
  float celsius = tempConverter(fahrenheit);
  println(fahrenheit + "°F = " + celsius + "°C");
}
