# Fido

To install, open a terminal and run...
```
curl https://rjsteinert.github.io/fido/install.sh | bash
```


Interested in running it manually? Try this in a terminal.
```
cd ~/Fido
./tools/yocto-temperature | ./tools/bounds --minimum=1 --maximum=25 --process-name=sensor1 | ./tools/sinch --key=17254479-2fcc-46b8-8rbe-dd1b0rdc0e33 --secret=QGrd655rAr2/fbrlIseZcQ== --phone=8024884622
```
