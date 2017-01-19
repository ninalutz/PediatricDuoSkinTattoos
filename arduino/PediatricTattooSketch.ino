#include <Skinduino.h>

const int SUMMON_PIN = A2;
const int NUM_CAPTOUCH_PINS = 8;
int incomingByte = 0;
Skinduino skinduino;

void setup() {
  Wire.begin();
  Serial1.begin(115200);
}

void loop() {
  getCommand();
  if (incomingByte == '1') {
    Serial1.print("hello there!");
  }
}

void getCommand() {
  if (Serial1.available() > 0) {
    incomingByte = Serial1.read();
  } else {
    incomingByte = -1;
  }
}

void printSerialString(String s) {
  Serial1.print(s);
}

void newlineSerial() {
  Serial1.println();
}

