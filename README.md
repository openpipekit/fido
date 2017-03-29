# Fido Wifi Wizard
A set up wizard for configuring a Raspberry Pi to send temperature alerts via text message. Uses Sinch.com to send the text message over Wifi for a cost of 1 penny per text message.

## Hardware needed
- Raspberry Pi 2 or 3 Model B ($35) 
- Raspberry Pi Case ($12)  
- Micro SD Card ($12)
- USB Power Supply ($8) 
- Yocto-Temperature USB Sensor ($39)
- For installation, you must have on hand an HDMI monitor or TV, USB keyboard, USB mouse, and a Micro-SD Card Reader. 
- Don't have Wifi reception where you want to sense temperatures? Install a [Wifi Bridge to extend range up to a mile, still looking for simple tutorials on this.](https://www.youtube.com/watch?v=hrEEOV5oA8Y&list=PL1fn6oC5ndU8WRmeSbUtfvYZMBmKkXKwx&index=5)

Total cost: $106

## Guide
- [Fido Wifi Step 1: Getting the parts together and setting up a Raspberry Pi.](docs/step-1.md)
- [Fido Wifi Step 2: Configuring a Raspberry Pi to send temperature alerts via text message.](docs/step-2.md)
- [Fido Wifi Step 3: Setting up](docs/step-3.md) 

## Quickstart: Run the wizard
Already have your Raspberry Pi plugged in and booted up? Run the Fido Wifi Wizard by opening a terminal and copy/pasting this command in. 
```
curl https://openpipekit.github.io/fido/install.sh | bash
```

