import processing.serial.*;
import javax.swing.*;
import java.io.*;
boolean home, showprofile;


void setup(){
  home = true;
  size(1200, 800);
    bear = loadImage("BearTattooPNG.png");
  initGraphics();
  
//  drawHomeScreen();
// drawPatientProfile("Test123");
  drawHomeScreen();
  //drawPatientProfile(0);
  //initPorts();
}

void draw(){
  if(millis() % 3 == 0){
  //println(home, showprofile);
  }
 
  background(background);
//
  if(home){
  image(homescreen, 0, 0);
  }
//  
  if(showprofile){
    fill(background);
  image(profile, 0, 0);
  }
  
//    for(int i=0; i<buttons.length; ++i) {
//    buttons[i].display();
//  }
}
