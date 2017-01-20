int numrows = 2;
int numcols = 4;
int xoffset = 50;
int yoffset = 100;
int xspace = 300;
int yspace = 350;
PImage James, Ben, Zach, David, Stacy, Mary, Beth, Jane;
String[] names = {"James", "Ben", "Zach", "David", "Stacy", "Mary", "Beth", "Jane"};
ArrayList<SimpleButton>ChildrenButtons = new ArrayList<SimpleButton>();
void drawHomeScreen(){
  println("drawing homescreen", millis());
  //showprofile = false;
  Jane = loadImage("data/Jane.jpg");
  Ben = loadImage("data/Ben.jpg");
  Zach = loadImage("data/Zach.jpg");
  David = loadImage("data/David.jpg");
  Stacy = loadImage("data/Stacy.jpg");
  Mary = loadImage("data/Mary.jpg");
  Beth = loadImage("data/Beth.jpg");
  James = loadImage("data/James.jpg");
  
  PImage[] images = {James, Ben, Zach, David, Stacy, Mary, Beth, Jane};
if(home){
    int count = 0;
    Interactive.make(this);
    for(int i = 0; i<numrows; i++){
      for(int j = 0; j<numcols; j++){
            button = new SimpleButton(xoffset + xspace*j, yoffset + yspace*i, 200, 250, names[count], true, count, images[count]);
            ChildrenButtons.add(button);
            count+=1;
        }
    }
}
    
    homescreen.beginDraw();
    homescreen.textSize(30);
    homescreen.textAlign(CENTER, CENTER);
    homescreen.fill(accentwhite);
    homescreen.text("Welcome to Health Care", width/2, 50);
    homescreen.endDraw();
}
