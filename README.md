# docker
Docker related files



#1. Running ETL
Build and Run the ETL container; Steps are as below;
1. cd /etl
2. docker build -t scsb-etl .
3. docker run -i -t scsb-etl /bin/bash
4. sh pan.sh -file=ParentTransformationFilePath -param:childTransformationPath= ChildTransformationFilePath -param:inputFilesDirectoryPath=SourceFilesDirectoryPath -param:loadReportsFilePath=LoadReportsFilePath -param:db-server=HostName -param:db-port=Port -param:db-name=DBName -param:db-user=Username -param:db-password=Password
