USE `recap` ;

-- Script for Release 0.9.29 starts here

ALTER TABLE ITEM_T ADD COLUMN CGD_CHANGE_LOG varchar(20)  DEFAULT NULL;
UPDATE `recap`.`job_t` SET `JOB_NAME`='AccessionToDataExportJobsInSequence', `JOB_DESC`='Runs all the accession process related jobs sequentially. Jobs that are included to run in sequential are, 1) Accession 2) Accession Report 3) Submit Collection 4) Matching Algorithm 5) Incremental and Deleted Export' WHERE `JOB_ID`='7';

-- Script for Release 0.9.29 ends here


