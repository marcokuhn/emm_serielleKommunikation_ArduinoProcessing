/*

Lese analogen Sensorwert an PIN 0 und
lasse diesen am seriellen Monitor ausgeben.

*/

int sensorPin = A0;    // A0 = PIN für den Wert des Potentiometers
int sensorValue = 0;  // Initialisierung des Sensorwertes

void setup() {
   // Setzt die Datenübertragungsrate in Bits per Second (Baud)
  Serial.begin(9600); 
}

void loop() {
  // lese den Sensorwert ein
  sensorValue = analogRead(sensorPin);    
  // gebe den Sensorwet aus
  Serial.println(sensorValue);
  // zeitliche Verzögerung von 100 ms um Werte auszulesen 
  delay(100);
}
