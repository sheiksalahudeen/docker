USE `recap` ;

-- Script for Release 0.9.24 starts here

UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='BT,BZ,CS,MP,MH,RH,RS' WHERE `CUSTOMER_CODE`='RH';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='BT,BZ,MP,MZ,RS,RH' WHERE `CUSTOMER_CODE`='RS';

INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (5,'GenerateAccessionReport','Generate Accession Report',NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (6,'Accession','Ongoing Accession',NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (7,'RunJobSequentially','Run Job Sequentially',NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (8,'PurgeAccessionRequests','Purge Accession Requests',NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (9,'AccessionReconcilation','Generate DailyReconcilation Report',NULL,NULL,NULL,NULL);

-- Script for Release 0.9.24 ends here


