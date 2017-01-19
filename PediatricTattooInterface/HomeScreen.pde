int numrows = 2;
int numcols = 5;
int xoffset = 50;
int yoffset = 200;
int xspace = 300;
int yspace = 300;

void drawHomeScreen(){
    Interactive.make( this );
    
    for(int i = 0; i<numrows; i++){
      for(int j = 0; j<numcols; j++){
            button = new SimpleButton(xoffset + xspace*j, yoffset + yspace*i, 200, 250, "patient");
        }
    }
    
    homescreen.beginDraw();
    
    homescreen.endDraw();
    
}
