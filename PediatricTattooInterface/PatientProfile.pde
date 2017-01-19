void drawPatientProfile(String Patient){
    Interactive.make( this );
    isReporting = new SimpleButton(50, 500, 100, 50, "Report");
    
    profile.beginDraw();
    profile.fill(lightblue);
    profile.rect(width-width/3, 100, 300, 400);
    profile.rect(width/3-300, height - height/3, width-200, 225);
    profile.endDraw();
}
