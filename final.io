#include <RH_ASK.h>
#include <SPI.h>

#define IN1 2
#define IN2 3
#define IN3 4
#define IN4 5

RH_ASK driver;

void setup() {
  Serial.begin(9600);
  if (!driver.init()) {
    Serial.println("RadioHead driver init failed");
    while (1);
  }

  pinMode(IN1, OUTPUT);
  pinMode(IN2, OUTPUT);
  pinMode(IN3, OUTPUT);
  pinMode(IN4, OUTPUT);
}

void loop() {
  uint8_t buf[1];
  uint8_t buflen = 1;

  if (driver.recv(buf, &buflen)) {
    char command = (char)buf[0];

    switch (command) {
      case 'F': // Forward
        digitalWrite(IN1, HIGH);
        digitalWrite(IN2, LOW);
        digitalWrite(IN3, HIGH);
        digitalWrite(IN4, LOW);
        break;

      case 'B': // Backward
        digitalWrite(IN1, LOW);
        digitalWrite(IN2, HIGH);
        digitalWrite(IN3, LOW);
        digitalWrite(IN4, HIGH);
        break;

      case 'L': // Left
        digitalWrite(IN1, LOW);
        digitalWrite(IN2, HIGH);
        digitalWrite(IN3, HIGH);
        digitalWrite(IN4, LOW);
        break;

      case 'R': // Right
        digitalWrite(IN1, HIGH);
        digitalWrite(IN2, LOW);
        digitalWrite(IN3, LOW);
        digitalWrite(IN4, HIGH);
        break;

      case 'S': // Stop
        digitalWrite(IN1, LOW);
        digitalWrite(IN2, LOW);
        digitalWrite(IN3, LOW);
        digitalWrite(IN4, LOW);
        break;
    }
  }
}
