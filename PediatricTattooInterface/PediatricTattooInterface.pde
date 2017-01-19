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
  
  if (isReporting.on) {
      println("I'm printing");
  }
}
