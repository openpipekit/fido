
FIDO_DIR=$HOME/Fido
FIDO_VERSION="master"
if [ -d $FIDO_DIR ]; then
  cd $FIDO_DIR
  git reset --hard
  git pull
else
  git clone https://github.com/rjsteinert/fido.git $FIDO_DIR
  cd $FIDO_DIR
fi
git checkout $FIDO_VERSION
lxterminal --title="Fido Installation Wizard" -e "bash -c ./wizard.sh;bash"
