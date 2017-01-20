color background = color(17, 24, 63);
color accentred = color(238, 91, 48);
color accentwhite = color(236, 240, 241);
color medblue = color(0, 116, 217);
color lightblue = color(249, 175, 72);

PGraphics homescreen, profile;

import de.bezier.guido.*;
import controlP5.*;

SimpleButton button, requestDoctor, isReporting, homebutton;
void initGraphics(){
  homescreen = createGraphics(width, height);
  profile = createGraphics(width, height);
}

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
   if ( on ) fill(lightblue, 50);
        else fill(medblue, 50);
        if(image && home){
           image(picture, x, y, width, height);
           rect(x, y, width, height);
           fill(accentwhite);       
           textSize(20);
           textAlign(CENTER, CENTER);
           text(name, width/2+x, y+height/2);
        }
        
        if(image == false){
         if ( on ) fill(lightblue, 50);
          else fill(medblue, 50);
          rect(x, y, width, height);
          fill(accentwhite);       
          textSize(20);
          textAlign(CENTER, CENTER);
          text(name, width/2+x, y+height/2);
        }
        
        if(home){
            if(ChildrenButtons.get(imgnumber).on){
              home = false;
              showprofile = true;
              drawPatientProfile(imgnumber);
              homebutton.on = false;
            }
        }
        
        if(showprofile){
          if(name.equals("Home")){
            if(on){
              showprofile = false;
              home = true;
              ChildrenButtons.get(imgnumber).on = false;
              profile.clear();
            }
          }
        }
    }
}
