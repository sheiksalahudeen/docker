#!/bin/sh

ZOO_DATA=/opt/ZK_Data

echo $ZOO_NODE_ID > $ZOO_DATA/myid

ls -lath $ZOO_DATA

cd /opt/zookeeper
cat conf/zoo-1.cfg

sed -i -e 's@<server_1_host>@'"$ZOO_1_HOST"'@g' conf/zoo-1.cfg
sed -i -e 's@<server_2_host>@'"$ZOO_2_HOST"'@g' conf/zoo-1.cfg
sed -i -e 's@<server_3_host>@'"$ZOO_3_HOST"'@g' conf/zoo-1.cfg

cat conf/zoo-1.cfg

bin/zkServer.sh start conf/zoo-1.cfg

watch uptime