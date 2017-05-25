USE `recap` ;

-- Script for Release 0.9.24 starts here

INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (5,'GenerateAccessionReport','Generate Accession Report',NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (6,'Accession','Ongoing Accession',NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (7,'RunJobSequentially','Run Job Sequentially',NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (8,'PurgeAccessionRequests','Purge Accession Requests',NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (9,'AccessionReconcilation','Generate DailyReconcilation Report',NULL,NULL,NULL,NULL);

-- Script for Release 0.9.24 ends here


