

/*
 * Arduino Übung
 * Einlesen von analogem Potiwert
 * zugehöriger Code für Arduino Sketch AnalogInputSerial.ino
 */

import processing.serial.*;

Serial myPort;    // erstelle Objekt von der seriellen Klasse Serial
int lf = 10;      // ASCII linefeed (repräsentiert \n)
String inString ; // Variable für eingehende Nachricht

void setup() 
{
  size(200, 200);
  print(Serial.list()); 
  String portName = Serial.list()[5];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil(lf); 
}

void draw()
{
   float value = int(inString) * (width/1023.0);
   println(value);
   background(0); 
   ellipse(value,height/2,50,50);  
}

void serialEvent(Serial p) { 
  inString = trim(p.readString());
  println(inString); 
}
