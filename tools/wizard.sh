#!/bin/bash


sleep 1
echo ""
echo "Let's set up your Fido."
sleep 1
echo ""
#echo "Because your Fido is not a phone, we're going to connect to the sinch.com to send the text message for us.  "
echo "To send text messages, we're going to use sinch.com."
sleep 1
echo ""
echo "If you haven't registered with sinch.com yet, go ahead and do it. It's a penny per text message and they give you \$2 to start with. When you're all set, Sinch will have had you set up an app. We need the keys to that app so go to your dashboard and click on the app's \"keys\" icon."
echo ""
echo "Press enter when you're done with that."
read ENTER
echo "Copy and paste the Key here and press enter:"
read FIDO_SINCH_KEY
sleep 1
echo ""
echo "You entered: $FIDO_SINCH_KEY"
sleep 1
echo ""
echo "Copy and paste the Secret here and press enter:"
read FIDO_SINCH_SECRET
sleep 1
echo ""
echo "You entered: $FIDO_SINCH_SECRET"
sleep 1
echo ""





# you a text message notify you when your Yoctopuce Temperature Sensor in Celsius goes 


#./yocto-temperature | ./bounds --minimum=$FIDO_MINIMUM --maximum=$FIDO_MAXIMUM --process-name="$FIDO_NAME" | ./sinch --key=$FIDO_SINCH_KEY --secret=$FIDO_SINCH_SECRET --phone=$FIDO_SINCH_PHONE
