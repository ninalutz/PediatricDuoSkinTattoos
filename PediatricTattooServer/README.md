# README

IAP SkinDuino Project you can find the server running on https://pediatrictattoo.herokuapp.com/.

How to run locally:

1. Install rails by following this guide http://guides.rubyonrails.org/getting_started.html#installing-rails
2. Install postgresql (I used the homebrew method but there's a dmg installer somewhere) `brew install postgresql`
3. Start the server by getting to the server directory and running `./bin/rails server` in the terminal

you should now be able to access http://localhost:3000

## Requests

### Patients

#### Create

Visit http://url to create a new patient using the form

Required field: `name`

`curl -H "Content-Type: application/json" -X POST -d '{"name": "abcde", "ble_id": "123456789", "doctor": "John Doe"}' http://url/patients`

response:

#### Update

`curl -H "Content-Type: application/json" -X PATCH -d '{"name": "fghij"}' http://url/patients/1`

response:
