# Hand-Gestures-Controlled-Robot-
RoboCar is a prototype of a real-time hand gesture-controlled robot car designed to operate wirelessly using simple hand movements. Built with Arduino, Bluetooth, and sensors like accelerometer and flex sensors, RoboCar is capable of navigating with gesture commands and avoiding obstacles with its ultrasonic sensor.

🚗 No physical contact, no joystick — just your hand movements control the car!

 Features
🔄 Real-time hand gesture recognition

📶 Wireless control via Bluetooth

📍 Obstacle detection using ultrasonic sensor

⚙️ Arduino-based motor control

🔋 Low-cost, efficient and compact design

🌐 Suitable for applications in search & rescue, surveillance, agriculture, and assistive tech

🛠️ Technologies & Components Used
Component	Description
Arduino nano	Microcontroller platform
Accelerometer (MPU6050)	Detects tilt/movement
RF Transmitter And Receiver 
Ultrasonic Sensor (HC-SR04)	Obstacle detection
Motor Driver (L298N)	Controls DC motors
Robot Chassis	4-wheel base
Battery Pack	Power supply

🧠 How It Works
Hand Movement Detection
MPU6050 accelerometer sensors mounted on the glove detect hand tilt and finger bends.

Signal Transmission
The Arduino reads the sensor data and sends it wirelessly to the robot nRF24lo1 .

Motor Control
The robot receives data and interprets the gesture to move:

Forward, Backward

Left, Right

Stop

Obstacle Avoidance
The ultrasonic sensor continuously scans for obstacles and stops the robot if needed.

📌 Applications
🔍 Search and rescue in hazardous areas

🛡️ Surveillance in restricted zones

🚜 Touchless operation in agriculture

♿ Assistive tech for physically challenged users

📚 Educational tool for robotics and IoT learning



🚀 Getting Started
🔌 Hardware Setup
Assemble robot car with motor driver, sensors, and chassis

Mount Arduino Nano and RF transmitter 

Connect sensors to Arduino following the circuit diagram


💻 Software Setup
Install Arduino IDE

Upload the Arduino code for sensor data transmission and motor control

Pair Bluetooth modules (HC-05 with glove, another on car if needed)

Power on both units and test gesture response

📚 References & Inspiration
