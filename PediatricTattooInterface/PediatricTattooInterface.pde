import processing.serial.*;
import javax.swing.*;
import java.io.*;
boolean home, showprofile;

void setup(){
  size(1200, 800);
  initGraphics();
//  drawHomeScreen();
  drawPatientProfile("Test123");
}

void draw(){
 
  background(background);
  fill(accentwhite);
  textSize(30);
  textAlign(CENTER, CENTER);
  
  if (isReporting.on) {
      println("I'm printing");
  }
    fill(accentwhite);
  text("Welcome to Health Care", width/2, 50);
//  image(homescreen, 0, 0);
  image(profile, 0, 0);
}