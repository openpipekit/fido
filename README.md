# OPK CLI: Fido

Send values to this CLI over a pipe and give it a unique process name, a maximum, and a minimum. It will echo a message only when the values sent over the pipe go from out of bounds to in bounds or when they go from in bounds to out of bounds. This helps avoid situations where you want an alert when a temperature goes out of bounds but after it goes out of bounds you don't need an alert every time a reading is taken. 

Example usage:
```
$ echo 42 | ./fido temperature_sensor_1 30 45
temperature_sensor_1 is now in bounds with a value of 42
$ echo 42 | ./fido temperature_sensor_1 30 45
$ echo 42 | ./fido temperature_sensor_1 30 45
$ echo 20 | ./fido temperature_sensor_1 30 45
temperature_sensor_1 has detected a value of 20 which is less your maximum of 30
$ echo 20 | ./fido temperature_sensor_1 30 45
$ echo 20 | ./fido temperature_sensor_1 30 45
$ echo 42 | ./fido temperature_sensor_1 30 45
temperature_sensor_1 is now in bounds with a value of 42
$ echo 42 | ./fido temperature_sensor_1 30 45
$ echo 42 | ./fido temperature_sensor_1 30 45
$ echo 55 | ./fido temperature_sensor_1 30 45
temperature_sensor_1 has detected a value of 55 which is more than your maximum of 45
$ echo 55 | ./fido temperature_sensor_1 30 45
$ echo 55 | ./fido temperature_sensor_1 30 45
```


