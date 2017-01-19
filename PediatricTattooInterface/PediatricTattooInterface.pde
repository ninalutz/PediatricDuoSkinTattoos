import processing.serial.*;
import javax.swing.*;
import java.io.*;

void setup(){
  size(1200, 600);
  initGraphics();
  initButtons();
}

void draw(){
  background(background);
  
  // PostRequestSample
  if (isReporting.on) {
    PostRequest post = new PostRequest("https://pediatrictattoo.herokuapp.com/patients");
    post.addHeader("Accept", "application/json");
    post.addData("name", "Rune");
    post.send();
    println("Reponse Content: " + post.getContent());
    println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
    delay(1000);
  }
}
