# PediatricDuoSkinTattoos
Repository for class project. This repository contains the code for our tattoo project. This project was an electronic bear tattoo made with the DuoSkin fabrication technology from the MIT Media Lab. The tattoo graphic was design by Josh Woodward.

The project itself is designed for children to be able to record their pain levels in different parts of the body and send this information to their doctor in a web server and GUI setup, where the doctor can easily interact with the data and send messages to the tattoo as well. This is intended as a new approach to a two way TUI interfacing with a GUI in a medical environment. And just to give doctors and patients an effective communication route, while making hospital stays more fun.

The platform is meant as a proof of concept as it was put together in 2 days as part of a workshop at the MIT Media Lab.

#Interface
This is the GUI that connects with the tattoo and calibrates the various sensors via Bluetooth. It processes the input
from the tattoos and communicates with the GUI output.

##To run
Download Processing 2 from https://processing.org. Make sure to download Processing 2. In your Processing IDE add the appropriate libraries; HTTP Requests, P5Control, Guido.

To run just the GUI, run as normal. To run with hardware, uncomment the marked code in the Arduinocomm tab of the software.

##Features
A GUI that includes multiple patient profiles, buttons, line graphs, and a realtime graphical output of the bear tattoo as the patient records data. Includes logic for easy to make buttons and multiple graphi canvases. Also includes the math to calibrate the analog outputs both as pain readers and buttons for the tangible interface of the tattoo.

#Hardware
The hardware for this project can be recreated with capacitive sensing. You need 8 capacitive sensors (6 for the bear tattoo, 2 for the buttons on the tattoo) and the appropriate microcontroller.

##To run
The Arduino code inside this repo can be easily adapted and uploaded to a variety of boards.

#Web server

IAP SkinDuino Project you can find the server running on https://pediatrictattoo.herokuapp.com/.

How to run locally:

1. Install rails by following this guide http://guides.rubyonrails.org/getting_started.html#installing-rails
2. Install postgresql (I used the homebrew method but there's a dmg installer somewhere) `brew install postgresql`
3. Start the server by getting to the server directory and running `./bin/rails server` in the terminal

you should now be able to access http://localhost:3000

## Requests

### Patients
Visit http://url to create a new patient using the form

Required field: `name`

`curl -H "Content-Type: application/json" -X POST -d '{"name": "abcde", "ble_id": "123456789", "doctor": "John Doe"}' http://url/patients`

response: `{"id":1,"name":"lala","ble_id":"1234","doctor":"lili"}`

#### Update

`curl -H "Content-Type: application/json" -X PATCH -d '{"name": "fghij"}' http://url/patients/1`

response: `{"id":1,"name":"lala","ble_id":"1234","doctor":"lili"}`

#### Get Patient's Pain Log

`curl -X GET http://localhost:3000/patients/:id/pain_log`

### Pain Logs

#### Create

Visit http://url/pain_logs/new to create a new pain log using the form

Required field: 'patient_id, body_part, pain_level'

`curl -H "Content-Type: application/json" -X POST -d '{"patient_id": 1, "body_part": "left_limb", "pain_level": 9}' http://url/pain_logs`

#### Update

`curl -H "Content-Type: application/json" -X PATCH -d '{"body_part": "right_limb"}' http://url/patients/1`
