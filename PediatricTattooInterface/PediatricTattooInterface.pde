import processing.serial.*;
import javax.swing.*;
import java.io.*;
boolean home, showprofile;

void setup(){
  home = true;
  size(1200, 800, P3D);
    bear = loadImage("BearTattooPNG.png");
  initGraphics();
  
//  drawHomeScreen();
// drawPatientProfile("Test123");
  drawHomeScreen();
  //drawPatientProfile(0);
  //initPorts();
}

void draw(){
  println(mouseX, mouseY);
  if(millis() % 3 == 0){
 // println(home, showprofile);
  }
 
  background(background);
//
  if(home){
  image(homescreen, 0, 0);
  }
//  
  if(showprofile){
    fill(background);
  background(background);
  
  // PostRequestSample
  //if (isReporting.on) {
  //  PostRequest post = new PostRequest("https://pediatrictattoo.herokuapp.com/patients");
  //  post.addHeader("Accept", "application/json");
  //  post.addData("name", "Rune");
  //  post.send();
  //  println("Reponse Content: " + post.getContent());
  //  println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
  //  delay(1000);
  //}
    fill(accentwhite);
  //text("Welcome to Health Care", width/2, 50);
//  image(homescreen, 0, 0);
  image(profile, 0, 0);
  }
  
//    for(int i=0; i<buttons.length; ++i) {
//    buttons[i].display();
//  }
}
