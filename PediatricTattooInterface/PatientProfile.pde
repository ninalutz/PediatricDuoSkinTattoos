PImage bear;
PShape s;
void drawPatientProfile(int Patient){
  println("Drawing thing", Patient);
  homescreen.clear();
  profile.clear();
  
  ChildrenButtons.get(Patient).on = false;
  Jane = loadImage("data/Jane.jpg");
  Ben = loadImage("data/Ben.jpg");
  Zach = loadImage("data/Zach.jpg");
  David = loadImage("data/David.jpg");
  Stacy = loadImage("data/Stacy.jpg");
  Mary = loadImage("data/Mary.jpg");
  Beth = loadImage("data/Beth.jpg");
  James = loadImage("data/James.jpg");
  
    PImage[] images = {James, Ben, Zach, David, Stacy, Mary, Beth, Jane};
    Interactive.make( this );
    viewReport = new SimpleButton(width/2-100, 275, 200, 50, "Access Full Report", false, 0, Jane);
    visitPatient = new SimpleButton(width/2-100, 350, 200, 50, "Visit Patient", false, 0, Jane);
    homebutton = new SimpleButton(10, 10, 200, 50, "Home", false, Patient, Jane);
    requestDoctor = new SimpleButton(width/2-100, 200, 200, 50, "Requesting Doctor", false, 0, Jane);
    
    
    viewReport.on = false;
    visitPatient.on = false;
    profile.beginDraw();
    profile.fill(lightblue);
        profile.stroke(#ffffff);
    profile.strokeWeight(2);
    
        int[] pain = {int(random(10)), int(random(10)), int(random(10)), int(random(10)), int(random(10)), int(random(10))};
    int painrate = 0;
    for(int i = 0; i<pain.length; i++){
      painrate+=pain[i];
    }
    
    painrate = painrate/pain.length;
    
    profile.rect(width-width/3, 100, 300, 300);
    profile.image(images[Patient], width-width/3 + 50, 120, 200, 260);
    profile.rect(width/3-300, height/2 + 50, width-200, 300);
    profile.fill(lightblue);
    profile.textAlign(CENTER, CENTER);
    profile.textSize(30);
    profile.text("Profile: " + names[Patient], width/2, 50);
    profile.textSize(20);    
    profile.textAlign(LEFT, CENTER);
    
    profile.fill(#ffffff);
    profile.text("Current pain reading: " + painrate, width/2-100, 225-75);
    profile.text("Room Numer: " + 201, width/2-100, 200-75);
    profile.text("Age: " + 9, width/2-100, 175-75);
    bear.resize(700, 501);
    

    profile.image(bear, -80, 30);
    profile.line(168, 181, 119, 209);
    profile.text(pain[0], 105, 215);
    profile.line(156, 269, 242, 252);
    profile.text(pain[1], 142, 265);
    profile.line(124, 320, 208, 341);
    profile.text(pain[2], 110, 317);
    profile.line(376, 280, 344, 342);
    profile.text(pain[3], 373, 265);
    profile.line(369, 174, 400, 225);
    profile.text(pain[4], 403, 228);
    profile.line(316, 130, 371, 110);
    profile.text(pain[5], 376, 105);
    
    float[] values = { random(250), random(250), random(250), random(250), random(250), random(250), random(250), random(250), random(250), random(250) };
 
    
      float lineWidth = (float) (width-205)/(values.length-1);
        for (int i=0; i<values.length-1; i++) {
          profile.strokeWeight(6);
          profile.stroke(accentred);
          profile.line(i*lineWidth + 103, values[i] + 500, (i+1)*lineWidth + 100, values[i+1] + 500);
  }
      
    profile.endDraw();
    
}
