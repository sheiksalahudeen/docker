
echo "Parameter = $1"
PROJ_NAME="scsb-etl"
PROJ_DIR="/opt/scsb-etl"
PROJ_DIR_TAG=""
VAR_SLASH="/"

if [ -z $1 ] ;then	
	PROJ_DIR_TAG=$PROJ_DIR$VAR_SLASH$PROJ_NAME;
else
	PROJ_DIR_TAG=$PROJ_DIR$VAR_SLASH$1;
fi


# echo $PROJ_DIR_TAG
mkdir $PROJ_NAME
cd $PROJ_DIR
git clone https://github.com/ResearchCollectionsAndPreservation/scsb-etl.git $1
# echo $PROJ_DIR_TAG
cd $PROJ_DIR_TAG
# ls -l
pwd
./gradlew clean build -x test

ln -s $PROJ_DIR_TAG/build/libs/scsb-etl-0.0.1-SNAPSHOT.jar /etc/init.d/scsb-etl
cp $PROJ_DIR_TAG/build/libs/scsb-etl-0.0.1-SNAPSHOT.jar /opt

