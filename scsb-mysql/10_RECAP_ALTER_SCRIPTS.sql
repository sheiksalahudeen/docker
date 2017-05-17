USE `recap` ;

-- Script for Release 0.9.23 starts here

INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (4,'DailyReconcilation','Generate DailyReconcilation Report',NULL,NULL,NULL,NULL);

DROP TABLE AUDIT_T;
DROP TABLE LOAN_T;

-- Script for Release 0.9.23 ends here