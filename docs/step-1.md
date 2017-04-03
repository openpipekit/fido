# Fido Wifi Step 1: Getting the parts together and setting up the Raspberry Pi

## Tutorials
1. [Decide what parts to buy]() (coming soon)
2. [Assemble the parts]() (coming soon)

## Parts list 

### For deployment 

- [Raspberry Pi Zero W Starter Kit ($35)](http://www.microcenter.com/product/475719/Raspberry_Pi_Zero_W_Starter_Kit) includes the following. 
  - Raspberry Pi Zero W (has built in WiFi and Bluetooth)
  - Micro USB Power Supply 
  - Mini-HDMI male to HDMI female adapter
  - USB to Micro USB adapter
- [Raspberry Pi Zero Case ($5)](http://cart.microcenter.com/cart.aspx?RedirectUrl=http://www.microcenter.com)  
- [8GB Micro SD Card Class 10 ($6)](http://www.microcenter.com/product/366174/8GB_microSDHC_Class_10_Flash_Memory_Card)
- [Yocto-Temperature USB Sensor ($39)](http://www.yoctopuce.com/EN/products/usb-environmental-sensors/yocto-temperature)
- [USB to Micro USB Cable to connect the sensor to the Pi ($6)](http://www.microcenter.com/product/472118/3_ft_Micro_USB_Cable_-_Black)

__Don't have Wifi reception where you want to sense temperatures?__ Here's a couple options. 

- Wifi just out of reach of the Pi's built in Wifi? Use a [Wifi USB dongle ($15)](http://www.microcenter.com/product/361805/TL-WN722N_150Mbps_Wireless_N_USB_Adapter).
- Need to go a little farther? We're experimenting with hooking a [directional antenna](https://www.neweggbusiness.com/Product/Product.aspx?Item=9SIV00Y5DD2371&nm_mc=KNC-GoogleBizMKPL-PC&cm_mmc=KNC-GoogleBizMKPL-PC-_-pla-_-Network+-+Interface+Cards-_-9SIV00Y5DD2371&gclid=CKfn2dK5_NICFcOKswodgjsKnQ) ($50x2) into your Wifi USB Dongle on one end and another on your router.
- Is the source of Internet really far away? Like a mile? $100 to $150  will get you the hardware to far a Wifi Bridge to extend range up to a mile. We're still  looking for simple tutorials on this but [here's a start](https://www.youtube.com/watch?v=hrEEOV5oA8Y&list=PL1fn6oC5ndU8WRmeSbUtfvYZMBmKkXKwx&index=5). Plug your Pi directly into the ethernet of the bridge. If you have a Pi Zero, use an [Ethernet USB adapter ($14)](http://www.microcenter.com/product/444552/UED011_USB_20_to_Fast_Ethernet_Adapter).


__Don't have power where you want to sense temperatures?__ The [PowerCore+ 26800 ($70)](https://www.anker.com/products/A1374011) with 96 Watt Hours capacity can theoretically run Raspberry Pi Zero W for 9 days (26.8Ah capacity \ .12A idle = 223 hours = 9 days) and a Raspberry Pi 3 for 3 days. [Power usage is cited from Raspberry Pi FAQ](https://www.raspberrypi.org/help/faqs/#powerReqs) but this needs to be confirmed with a Fido running in the field. If you are using a Wifi Dongle, power usage will increase power consumption. Need more Watt Hours? [Goal Zero](http://www.goalzero.com/p/164/goal-zero-yeti-150-portable-power-station) has a number of batter models with more but the cost gets up there. 


### For installation 
- [USB Hub](http://www.microcenter.com/product/423456/4-Port_USB_20_HUB) so you'll have enough USB ports to plug everything into your Pi Zero when being configured. When deployed, you'll just need the one USB port on the Pi Zero for the sensor.
- [Micro USB Card Reader for writing software to Micro SD Card ($6)](http://www.microcenter.com/product/351651/GFR204SD_10-in-1_USB20_Card_Reader-Writer_-_Green)
- [USB Keyboard and Mouse for navigating your Raspberry Pi ($8)](http://www.microcenter.com/product/466207/USB_Keyboard_-_Mouse_Combo)
- You'll need a way to view HDMI out of the Raspberry Pi. You might be in one of 4 scenarios: 
  1. You have a Monitor with HDMI in and an HDMI male to HDMI male cable. Nothing to buy!
  2. You're not afraid of the command line so you can add a blank `ssh` file to your SD Card at `/boot/ssh` to enable SSH on your Pi. When you Pi boots you can then SSH into your Raspberry Pi with the `ssh pi@raspberrypi.local` command, password is `raspberry`. If you have a Pi Zero, you will need an Ethernet USB adapter to connect to the network for your first time.
  3. You have a Monitor with VGA in with a VGA male to VGA male cable: [buy an HDMI to VGA adapter ($20)](http://www.microcenter.com/product/431859/hdmi_to_vga_adapter_with_audio)
  4. You have a Monitor with DVI in and a DVI male to DVI male cable: [buy an HDMI male to DVI female adapter ($10)](http://www.microcenter.com/product/355992/HDMI_Male_to_DVI_Female_Adapter) 
  5. Last resort: [buy a monitor with HDMI in ($100)](http://www.microcenter.com/product/462882/S22F350FHN_22_HD_LED_Monitor)


