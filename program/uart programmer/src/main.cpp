 #include <Arduino.h>
 #include <Wire.h>

int main(){
  init();
  Serial.begin(115200);
  Serial.println("hello world");
  return 0;
}