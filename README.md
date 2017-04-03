# Fido Wifi Wizard
This repositry contains a set up wizard for configuring a Raspberry Pi to send temperature alerts via text message. Uses Sinch.com to send the text message over Wifi for a cost of 1 penny per text message.

## Quickstart: Run the wizard
Already have your Raspberry Pi plugged in and booted up? Run the Fido Wifi Wizard by opening a terminal and copy/pasting this command in. 

```
curl https://openpipekit.github.io/fido/install.sh | bash
```

## Getting the parts 

### Equipment you will deploy
Raspberry Pi, take your pick:

1. Raspberry Pi Zero W (lasts 3x longer on battery)
  - [Raspberry Pi Zero W Starter Kit ($35)](http://www.microcenter.com/product/475719/Raspberry_Pi_Zero_W_Starter_Kit) includes the following. 
    - Raspberry Pi Zero W (has built in WiFi and Bluetooth)
    - Micro USB Power Supply 
    - Mini-HDMI male to HDMI female adapter
    - USB to Micro USB adapter
  - [Raspberry Pi Zero Case ($5)](http://cart.microcenter.com/cart.aspx?RedirectUrl=http://www.microcenter.com)  
2. Raspberry Pi 3 or 2 Model B
  - [The board ($30)](http://www.microcenter.com/product/473292/Raspberry_Pi_2_Model_B) 
  - [A case ($5)](http://www.microcenter.com/product/455745/Case_Base_for_Raspberry_Pi_2-B_-_Blue)
  - [A USB Power Supply ($8)](http://www.microcenter.com/product/465196/Power_Supply_for_Raspberry_Pi_2-3_with_Built-in_4ft_Micro_USB_Cable)

Other accessories:
- [8GB Micro SD Card Class 10 ($6)](http://www.microcenter.com/product/366174/8GB_microSDHC_Class_10_Flash_Memory_Card)
- [Yocto-Temperature USB Sensor ($39)](http://www.yoctopuce.com/EN/products/usb-environmental-sensors/yocto-temperature)
- [USB to Micro USB Cable to connect the sensor to the Pi ($6)](http://www.microcenter.com/product/472118/3_ft_Micro_USB_Cable_-_Black)

Total cost: $91 / $94


### Networking
Don't have Wifi reception where you want to sense temperatures? Here's a couple options. 

- Wifi just out of reach of the Pi's built in Wifi? Use a [Wifi USB dongle ($15)](http://www.microcenter.com/product/361805/TL-WN722N_150Mbps_Wireless_N_USB_Adapter).
- Need to go a little farther? We're experimenting with hooking a [directional antenna](https://www.neweggbusiness.com/Product/Product.aspx?Item=9SIV00Y5DD2371&nm_mc=KNC-GoogleBizMKPL-PC&cm_mmc=KNC-GoogleBizMKPL-PC-_-pla-_-Network+-+Interface+Cards-_-9SIV00Y5DD2371&gclid=CKfn2dK5_NICFcOKswodgjsKnQ) ($50x2) into your Wifi USB Dongle on one end and another on your router.
- Is the Internet really far away? Like a mile? $100 - $150 Install a [Wifi Bridge to extend range up to a mile, still looking for simple tutorials on this.](https://www.youtube.com/watch?v=hrEEOV5oA8Y&list=PL1fn6oC5ndU8WRmeSbUtfvYZMBmKkXKwx&index=5). Plug your Pi directly into the ethernet of the bridge. If you have a Pi Zero, use an Ethernet USB adapter.


### Power
Don't have power where you want to sense temperatures? Make sure to go with the Raspberry Pi Zero W and check out these options. 

- [PowerCore+ 26800 ($70)](https://www.anker.com/products/A1374011) can theoretically run Raspberry Pi Zero W for 9 days (26.8Ah capacity \ .12A idle = 223 hours = 9 days) and a Raspberry Pi 3 for 3 days. [Power usage cited from Raspberry Pi FAQ](https://www.raspberrypi.org/help/faqs/#powerReqs). If you are using a Wifi Dongle, power usage will increase (needs research). 
- Lead Acid batteries with converters.


### One time use build tools
- [USB Hub](http://www.microcenter.com/product/423456/4-Port_USB_20_HUB) so you'll have enough USB ports to plug everything into your Pi Zero when being configured. When deployed, you'll just need the one USB port on the Pi Zero for the sensor.
- [Micro USB Card Reader for writing software to Micro SD Card ($6)](http://www.microcenter.com/product/351651/GFR204SD_10-in-1_USB20_Card_Reader-Writer_-_Green)
- [USB Keyboard and Mouse for navigating your Raspberry Pi ($8)](http://www.microcenter.com/product/466207/USB_Keyboard_-_Mouse_Combo)
- You'll need a way to view HDMI out of the Raspberry Pi. You might be in one of 4 scenarios: 
  1. You have a Monitor with HDMI in and an HDMI male to HDMI male cable. Nothing to buy!
  2. You're not afraid of the command line so you can add a blank `ssh` file to your SD Card at `/boot/ssh` to enable SSH on your Pi. When you Pi boots you can then SSH into your Raspberry Pi with the `ssh pi@raspberrypi.local` command, password is `raspberry`. If you have a Pi Zero, you will need an Ethernet USB adapter to connect to the network for your first time.
  3. You have a Monitor with VGA in with a VGA male to VGA male cable: [buy an HDMI to VGA adapter ($20)](http://www.microcenter.com/product/431859/hdmi_to_vga_adapter_with_audio)
  4. You have a Monitor with DVI in and a DVI male to DVI male cable: [buy an HDMI male to DVI female adapter ($10)](http://www.microcenter.com/product/355992/HDMI_Male_to_DVI_Female_Adapter) 
  5. Last resort: [buy a monitor with HDMI in ($100)](http://www.microcenter.com/product/462882/S22F350FHN_22_HD_LED_Monitor)

## User Guide
- [Fido Wifi Step 1: Getting the parts together and setting up a Raspberry Pi.](docs/step-1.md)
- [Fido Wifi Step 2: Configuring a Raspberry Pi to send temperature alerts via text message.](docs/step-2.md)
- [Fido Wifi Step 3: Setting up](docs/step-3.md) 



## To do
- Retry to send text message in Sinch CLI
- Error log rediction to an obvious place
- Build our own VNC USB enabled image?
- Take input from user on that watchdog service
- Try directional antennas with USB Wifi Dongles
- Try mechanical timers for making batteries last longer
- Figure out easiest way to set up a Point-to-Point Wifi bridge (Ubiquity  + Commotion?)
