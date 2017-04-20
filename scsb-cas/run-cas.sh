echo "Parameter = $1"
PROJ_NAME="scsb-cas"
PROJ_DIR="/opt/scsb-cas"
PROJ_DIR_TAG=""
VAR_SLASH="/"

PROJ_DIR_TAG=$PROJ_DIR$VAR_SLASH$PROJ_NAME;

cd $PROJ_DIR_TAG

# echo Listing project directory
ls

exec ./build.sh run