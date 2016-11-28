

echo "Parameter = $1"
PROJ_NAME="scsb-solr"
PROJ_DIR="/opt/scsb-solr"
PROJ_DIR_TAG=""
VAR_SLASH="/"

PROJ_DIR_TAG=$PROJ_DIR$VAR_SLASH$PROJ_NAME;

# echo $PROJ_DIR_TAG
mkdir $PROJ_NAME
cd $PROJ_DIR
git clone https://github.com/ResearchCollectionsAndPreservation/scsb-solr.git
# echo $PROJ_DIR_TAG
cd $PROJ_DIR_TAG
git checkout tags/$1
# ls -l
# Add SCSB-SOLR files
cd /opt/solr-6.0.1/bin
./solr start
./solr create -c recap
cp $PROJ_DIR_TAG/src/main/resources/core/data-config.xml /opt/solr-6.0.1/server/solr/recap/conf
cp $PROJ_DIR_TAG/src/main/resources/core/solrconfig.xml /opt/solr-6.0.1/server/solr/recap/conf
cp $PROJ_DIR_TAG/src/main/resources/core/managed-schema /opt/solr-6.0.1/server/solr/recap/conf
mkdir /opt/solr-6.0.1/server/solr/configsets/recap_config
\
mkdir /opt/solr-6.0.1/server/solr/configsets/recap_config/conf
\
cp -R /opt/solr-6.0.1/server/solr/configsets/basic_configs/conf/* /opt/solr-6.0.1/server/solr/configsets/recap_config/conf
\
cp $PROJ_DIR_TAG/src/main/resources/core/managed-schema /opt/solr-6.0.1/server/solr/configsets/recap_config/conf
\
cp -R /opt/solr-6.0.1/server/solr/recap/conf/lang /opt/solr-6.0.1/server/solr/configsets/recap_config/conf
cp $PROJ_DIR_TAG/src/main/resources/temp/solrconfig.xml /opt/solr-6.0.1/server/solr/configsets/recap_config/conf