
int circle_radius = 100;

void setup(){
  size(640,640);
  stroke(255,0,0);
}

void draw(){
  background(0);
  ellipse(width/2,width/2, circle_radius, circle_radius);
}
