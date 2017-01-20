

class CapButton {
  private int capacitance;
  private float x, y, w, h, time, storedtime;
  
  public int getCapacitance() {
    return capacitance;
  }
  
  public float getWidth() {
    return w;
  }
  
  public float getHeight() {
    return h;
  }
  
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
  public void setCapacitance(int c) {
    capacitance = c;
  }
  
  public CapButton(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  public void display() {
    //int c = (buttonPressed)? 35 : 250;
    stroke(24);
    strokeWeight(2.0);
    noStroke();
    fill(0, capacitance);
    rect(x, y, w, h);
  }
 
}
