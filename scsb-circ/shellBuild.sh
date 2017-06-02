
echo "Parameter = $1"
PROJ_NAME="scsb-circ"
PROJ_DIR="/opt/scsb-circ"
PROJ_DIR_TAG=""
VAR_SLASH="/"

PROJ_DIR_TAG=$PROJ_DIR$VAR_SLASH$PROJ_NAME;

# echo $PROJ_DIR_TAG
mkdir $PROJ_NAME
cd $PROJ_DIR
git clone https://github.com/sheiksalahudeen/scsb-circ.git
# echo $PROJ_DIR_TAG
cd $PROJ_DIR_TAG
git checkout prod
# ls -l
pwd
./gradlew clean build -x test

ln -s $PROJ_DIR_TAG/build/libs/scsb-circ-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-circ
cp $PROJ_DIR_TAG/build/libs/scsb-circ-0.0.1-SNAPSHOT.jar /opt

