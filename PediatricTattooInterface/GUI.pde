//color background = color(17, 24, 63);
color background = #5b9aff;
color accentred = color(238, 91, 48);
color accentwhite = color(236, 240, 241);
color medblue = color(0, 116, 217);
color lightblue = color(249, 175, 72);

PGraphics homescreen, profile;

import de.bezier.guido.*;
import controlP5.*;

SimpleButton button, requestDoctor, visitPatient, viewReport, homebutton;
void initGraphics(){
  homescreen = createGraphics(width, height);
  profile = createGraphics(width, height);
}

int curpatient;

public class SimpleButton
{
    float x, y, width, height;
    boolean on, image;
    int imgnumber;
    String name;
    PGraphics p;
    PImage picture;
 
    SimpleButton ( float xx, float yy, float w, float h, String _name, boolean _image, int _imgnumber, PImage _imageset)
    {
        x = xx; y = yy; width = w; height = h; name = _name; image = _image; imgnumber = _imgnumber; picture = _imageset;
        
        Interactive.add( this ); // register it with the manager
    }
    
    // called by manager
    
    void mousePressed () 
    {
        on = !on;
    }

    void draw () 
    {
      
        if(image && home){
             if ( on ) fill(lightblue);
        else fill(medblue, 50);
           image(picture, x, y, width, height);
           rect(x, y, width, height);
           fill(accentwhite);       
           textSize(20);
           textAlign(CENTER, CENTER);
           text(name, width/2+x, y+height/2);
             
        }
        
        if(image){
          if(on){
             home = false;
             profile.clear();
             drawPatientProfile(imgnumber);
             curpatient = imgnumber;
          }
        }
        
        if(homebutton.on){
          home = true;
        }
        
        if(image == false && home ==false){
         if ( on ) fill(lightblue);
          else fill(medblue);
          rect(x, y, width, height);
          fill(accentwhite);       
          textSize(20);
          textAlign(CENTER, CENTER);
          text(name, width/2+x, y+height/2);
        }

      
    }
}
