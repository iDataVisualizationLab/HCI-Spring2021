import controlP5.*;
ControlP5 cp5;
void setup(){
  size(200, 200);
  smooth(2);
  cp5 = new ControlP5(this);
  PImage[] btnImages = {loadImage("circle1.png"),loadImage("circle2.png"), loadImage("circle3.png")};
  cp5.addButton("myBtn").setImages(btnImages).setSize(116, 116).updateSize();
}
void draw(){
}
