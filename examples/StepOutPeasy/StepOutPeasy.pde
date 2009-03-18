// Example for a frame-timed animation of the PeasyCam

import peasy.*;

PeasyCam cam;

void setup() {
  frameRate(5);
  size(200,200,P3D);
  cam = new PeasyCam(this, 100);
  PeasyCam.setTimer(PeasyCam.FRAMES);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);
}
void draw() {
  rotateX(-.5);
  rotateY(-.5);
  background(0);
  fill(255,0,0);
  box(30);
  pushMatrix();
  translate(0,0,20);
  fill(0,0,255);
  box(5);
  popMatrix();
  println(frameCount + " : " + cam.getDistance());
  
}

void keyPressed() {
  if(key == ' ') {
    println("startframe: " + frameCount);
    cam.setDistance(cam.getDistance()*3, 30);    
  }
}
