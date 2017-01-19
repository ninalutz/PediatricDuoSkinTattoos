import processing.serial.*;
import javax.swing.*;
import java.io.*;
boolean home, showprofile;

void setup(){
  size(1200, 800);
  initGraphics();
  drawHomeScreen();
}

void draw(){
  home = true;
  background(background);
    fill(accentwhite);
  text("Welcome to Health Care", width/2, 50);
//  if(home){
//    image(homescreen, 0, 0);
//  }
}
