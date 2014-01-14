/*
Beispiel um 2 Werte auszulesen 
und via String zu übertragen
*/

int potiPin = A0;    // Analogeingang A0 für Potentiometerwert
int buttonPin = 4;   // Digitaleingang 4 für Button
int sensorValue = 0; // Initialisierung Potiwert 
int buttonState = 0; // Initialisierung Buttonwert

void setup() {
  Serial.begin(9600); //bestimme Übertragungsrate
}

void loop() {
  // Einlesen der Sensorwerte
  sensorValue = analogRead(potiPin);    
  buttonState = digitalRead(buttonPin);
  
  // Übertargung der Werte al String in folgendem Format
  // Potiwert , Buttonwert \n
  // Komma ist Trennzeichen zw. Werten 
  // Newline definiert Ende einer Nachricht
  Serial.print(sensorValue); 
  Serial.print(",");
  Serial.print(buttonState);
  Serial.print("\n");
  
  delay(100);
}
