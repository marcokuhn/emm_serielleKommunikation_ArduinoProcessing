/*
 * Arduino Übung
 * Einlesen von analogem Potiwert
 * Template für Arduino Sketch AnalogInputSerial.ino
 * Zeichenfunktion muss noch implementiert werden
 */

import processing.serial.*;

Serial myPort;    // erstelle Objekt von der seriellen Klasse Serial
int lf = 10;      // ASCII linefeed (repräsentiert \n)
String inString ; // Variable für eingehende Nachricht


void setup() 
{
  size(200, 200);
  // listet alle verfügbaren seriellen Ports auf
  print(Serial.list()); 
  //benutzt in dieser Konfiguration 6. seriellen Port welcher in Serial.list() gekistet wird für die Datenkommunikation
  String portName = Serial.list()[5]; 
  // instanziert ein seriellen Objekt für die Kommunikation, definiert die Übertragungsrate 
  myPort = new Serial(this, portName, 9600); 
  //liest die Bytes bis zu einem Zeilenumbruch ("lf") ein. Bei Zeilenumbruch wird die Funktion serialEvent aufgerufen 
  myPort.bufferUntil(lf);  
}

void draw()
{ 
  
}

// serialEvent: wird aufgerufen wenn Daten verfügbar sind
// myPort.bufferUntil(lf) definiert in diesem Fall wann serialEvent aufgerufen wird
void serialEvent(Serial p) { 
  inString = trim(p.readString()); 
  println(inString);
}
