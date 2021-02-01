import controlP5.*;
ControlP5 cp5;
Slider slider;
int mySlider;

void setup() {
  size(800, 400);
  cp5 = new ControlP5(this);
  slider = cp5.addSlider("mySlider").setSize(200, 20).setRange(100, 300).setValue(200)
    .setPosition(40, 40);
  //Button and event handler
  cp5.addButton("myButton").setSize(40, 20).setPosition(40, 80);
  
}
void draw() {
}
//Event handler
void myButton() {
  println("From myButton");
  //Using variable
  println(slider.getValue());
  //Using name
  println(cp5.get(Slider.class, "mySlider").getValue());
  //Using variable name
  println(mySlider);
}
//Generic event handler
void controlEvent(ControlEvent theEvent){
  println(theEvent.getName());
  if(theEvent.getName()=="myButton"){
    println("From generic handler");
    println(slider.getValue());
  }
}
