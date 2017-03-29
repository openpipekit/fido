
FIDO_DIR=$HOME/Fido
FIDO_VERSION="master"
if [ -f $FIDO_DIR ]; then
  rm -rf $FIDO_DIR
fi
git clone https://github.com/rjsteinert/fido.git $FIDO_DIR
cd $FIDO_DIR
git checkout $FIDO_VERSION
./wizard.sh
