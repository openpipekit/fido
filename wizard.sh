#!/bin/bash

FIDO_DIRECTORY=$PWD

sleep 1
echo ""
echo "Let's set up your Fido."
sleep 1
echo ""
echo "To send text messages, we're going to use sinch.com."
sleep 2
echo ""
echo "If you haven't registered with sinch.com yet, go ahead and do that now."
echo ""
echo "Press enter when you're done with that."
read ENTER
echo ""
echo "Copy and paste your Sinch Key here and press enter:"
read FIDO_SINCH_KEY
sleep 1
echo ""
echo "You entered: $FIDO_SINCH_KEY"
sleep 1
echo ""
echo "Copy and paste the Sinch Secret here and press enter:"
read FIDO_SINCH_SECRET
sleep 1
echo ""
echo "You entered: $FIDO_SINCH_SECRET"
sleep 1
echo ""
echo "Now type the phone number you would like to send alerts to, then press Enter:"
read FIDO_SINCH_PHONE
sleep 1
echo ""
echo "Great! Let's send a text message to this number to test our configuration."
sleep 1
echo ""
echo "Press Enter when you are ready to receive the text text message."
read ENTER
echo ""
echo "This is a test..." | $FIDO_DIRECTORY/tools/sinch --key=$FIDO_SINCH_KEY --secret=$FIDO_SINCH_SECRET --phone=$FIDO_SINCH_PHONE
sleep 2
echo ""
sleep 1
echo ""
echo "The test text message has been sent. Wait a minute and if the text message has not been received, try closing this window and opening this program again. If you did receive the text message, press Enter to continue." 
read ENTER
echo ""
sleep 1
echo "We're all set up to send alerts to your phone. Now let's configure when those alerts happen."
sleep 2
echo ""
echo "What is the upper limit of temperature you want to be alerted of? Type a temperature in Celsius and press Enter:"
echo ""
echo "Upper temperature in Celsius:"
read FIDO_MAXIMUM
echo ""
sleep 1
echo "What is the lower limit of temperature you want to be alerted of? Type a temperature in Celsius and press Enter:"
echo ""
echo "Lower temperature in Celsius:"
read FIDO_MINIMUM
echo ""
sleep 1
echo "Installing..."
echo ""
echo ""
FIDO_NAME="Fido"
FIDO_COMMAND="$FIDO_DIRECTORY/tools/yocto-temperature | $FIDO_DIRECTORY/tools/bounds --minimum=$FIDO_MINIMUM --maximum=$FIDO_MAXIMUM --process-name=\"$FIDO_NAME\" | $FIDO_DIRECTORY/tools/sinch --key=$FIDO_SINCH_KEY --secret=$FIDO_SINCH_SECRET --phone=$FIDO_SINCH_PHONE"
FIDO_USER=$(whoami)
# Remove Fido entries from cron.
crontab -u $FIDO_USER -l | grep -v "Fido" | crontab -u $FIDO_USER -
# Add Fido entry to cron.
(crontab -u $FIDO_USER -l; echo "*/1 * * * * $FIDO_COMMAND" ) | crontab -u $FIDO_USER -
echo ""
echo "Everything has installed. Press enter to exit wizard."
read ENTER
