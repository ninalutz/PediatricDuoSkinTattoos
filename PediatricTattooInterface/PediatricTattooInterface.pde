import processing.serial.*;
import javax.swing.*;
import java.io.*;
boolean home, showprofile, isRecording, isRequesting;

void setup(){
  home = true;
  size(1200, 800, P3D);
    bear = loadImage("BearTattooPNG.png");
  initGraphics();
  
//  drawHomeScreen();

  drawHomeScreen();

 // drawPatientProfile(0);
  initPorts();
}

void draw(){

  background(background);

  if(home){
  image(homescreen, 0, 0);
  }
  
  else{
    homescreen.clear();
    image(profile, 0, 0);
  }
  
      for(int i=0; i<buttons.length; ++i) {
      if(buttons[i].capacitance > 250){
        buttons[i].time+=.1;
        println(i, buttons[i].time, second());
      }
      else{
        buttons[i].time = 0;
      }
  }
    for(int i = 2; i<buttons.length; i++){
      if(buttons[i].capacitance > 250){
       buttons[i].display();
      }
    }
  
  //if the recording button is turned on or not
  if(buttons[0].capacitance > 100 && buttons[0].time >0){
     isRecording = !isRecording;
     buttons[0].capacitance = 0;
     buttons[0].time = 0;
  }
  
  if(isRecording){
       drawPatientProfile(curpatient);
  }
 
  //if requesting a doctor
  if(buttons[4].capacitance > 210 && buttons[4].time>0){
      requestDoctor.on = !requestDoctor.on;
      buttons[4].time = 0;
      buttons[4].capacitance = 0;
  }
  
  //record the sensor readings if recording
  
  
  //export to PDF if view report pressed 

  // PostRequestSample
//  if (isRecording) {
//    PostRequest post = new PostRequest("https://pediatrictattoo.herokuapp.com/patients");
//    post.addHeader("Accept", "application/json");
//    post.addData("name", "Rune");
//    post.send();
//    println("Reponse Content: " + post.getContent());
//    println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
//    delay(1000);
//  }
}
