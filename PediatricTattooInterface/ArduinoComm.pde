//CapButton[] buttons;


CapButton[] buttons;
Serial arduinoPort;

static final int NUM_BUTTONS = 8, BUTTON_WIDTH = 75, BUTTON_HEIGHT = 75;

void initPorts(){
  //load serial list
  String[] ports = Serial.list();
  if(ports.length == 0){
  println("NO PORTS :(");
  exit();
  }
  
  // ask user to select serial port
  String preset="";
  String port = (String)JOptionPane.showInputDialog(frame, "Select serial port", "Cap touch", JOptionPane.PLAIN_MESSAGE, null, ports, null);
  
  if(port != null && port.length() > 0) {
    arduinoPort = new Serial(this, port, 9600);
    arduinoPort.bufferUntil('\n');
  } else {
    print("Cancelled");
    exit();
  }
  
  buttons = new CapButton[NUM_BUTTONS];
  int gutter = 0;
  int totalWidth = NUM_BUTTONS * BUTTON_WIDTH + (NUM_BUTTONS-1)*gutter;
  float x0 = (width - totalWidth)/2f;
  float y0 = (height - BUTTON_HEIGHT)/2f;
  for(int i=0; i<NUM_BUTTONS; ++i) {
    buttons[i] = new CapButton(x0 + i*(BUTTON_WIDTH+gutter), y0, BUTTON_WIDTH, BUTTON_HEIGHT);
  }
  
  noLoop();

}


void serialEvent(Serial p) {
  String line = p.readStringUntil('\n').trim();
  String[] toks = line.split(",");
  
  if(toks.length >= NUM_BUTTONS){  
   
    for(int i=0; i<NUM_BUTTONS; ++i) {
        int c = Integer.parseInt(toks[i]);
        buttons[i].setCapacitance(c);
    }

    redraw();
  }
}

void keyPressed() {
  if(key == 'r') {
    setBaseline();
  } 
  
}

void setBaseline() {
  arduinoPort.write(49);
  arduinoPort.write(" ");
}
