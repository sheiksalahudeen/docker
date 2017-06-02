
echo "Parameter = $1"
PROJ_NAME="scsb-persistence"
PROJ_DIR="/opt/scsb-persistence"
PROJ_DIR_TAG=""
VAR_SLASH="/"

PROJ_DIR_TAG=$PROJ_DIR$VAR_SLASH$PROJ_NAME;


# echo $PROJ_DIR_TAG
mkdir $PROJ_NAME
cd $PROJ_DIR
git clone https://github.com/sheiksalahudeen/scsb-persistence.git
# echo $PROJ_DIR_TAG
cd $PROJ_DIR_TAG
# ls -l
pwd
./gradlew clean build -x test

ln -s $PROJ_DIR_TAG/build/libs/scsb-persistence-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-persistence
cp $PROJ_DIR_TAG/build/libs/scsb-persistence-0.0.1-SNAPSHOT.jar /opt

