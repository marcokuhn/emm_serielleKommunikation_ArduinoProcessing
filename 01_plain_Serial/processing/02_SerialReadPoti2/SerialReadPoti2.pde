/*
 * Arduino Übung
 * Einlesen von analogem Potiwert
 * zugehöriger Code für Arduino Sketch AnalogInputSerial2.ino
 */

import processing.serial.*;

Serial myPort;    // erstelle Objekt von der seriellen Klasse Serial
int lf = 10;      // ASCII linefeed (repräsentiert \n)
String inString ; // Variable für eingehende Nachricht
String[] receivedValues = new String[2]; 

void setup() 
{
  size(200, 200);
  
  receivedValues[0] = "0";
  receivedValues[1] = "1";  
  
  print(Serial.list());
  String portName = Serial.list()[5];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil(lf); 
  
}

void draw()
{
   float valuePoti = int(receivedValues[0]) * (255/1023.0);
   println(valuePoti);
   background(valuePoti);  
   
   int valueButton = int(receivedValues[1]);
   println(valueButton);
   if(valueButton == 1){
     ellipse(width/2,height/2, 30, 30);  
   }
}

void serialEvent(Serial p) { 
  inString = trim(p.readString());   
  receivedValues = inString.split(",");
  
}
