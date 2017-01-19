color background = color(17, 24, 63);
color accentred = color(219, 72, 54);
color accentwhite = color(236, 240, 241);
color medblue = color(0, 116, 217);
color lightblue = color(50, 157, 212);

PGraphics homescreen, profile;

import de.bezier.guido.*;
import controlP5.*;

SimpleButton button;
SimpleButton isReporting;

void initGraphics(){
  homescreen = createGraphics(width, height);
  profile = createGraphics(width, height);
}

public class SimpleButton
{
    float x, y, width, height;
    boolean on;
    String name;
    PGraphics p;
    
    SimpleButton ( float xx, float yy, float w, float h, String _name)
    {
        x = xx; y = yy; width = w; height = h; name = _name;
        
        Interactive.add( this ); // register it with the manager
    }
    
    // called by manager
    
    void mousePressed () 
    {
        on = !on;
    }

    void draw () 
    {
        if ( on ) fill(lightblue);
        else fill(medblue);
        
        rect(x, y, width, height);
        fill(accentwhite);
        textSize(20);
        textAlign(CENTER, CENTER);
        text(name, width/2+x, y+height/2);
    }
}
