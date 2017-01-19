# README

IAP SkinDuino Project.

## Requests

### Patients

#### Create

Required field: name

`curl -H "Content-Type: application/json" -X POST -d '{"name": "abcde", "ble_id": "123456789", "doctor": "John Doe"}' http://url/patients`

response:

#### Update

`curl -H "Content-Type: application/json" -X PATCH -d '{"name": "fghij"}' http://url/patients/1`

response:
