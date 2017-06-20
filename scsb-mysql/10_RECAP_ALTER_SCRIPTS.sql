USE `recap` ;

-- Script for Release 0.9.27 starts here

UPDATE `recap`.`job_t` SET `JOB_DESC`='Purge the exception status requests which are 365 days older. (Number of days is configurable)' WHERE `JOB_ID`='1';
UPDATE `recap`.`job_t` SET `JOB_DESC`='Purge the email address attached to a request after 90 days of refile. In case of PHYREQ and after 60 days of EDD fulfillment. (Number of days is configurable)' WHERE `JOB_ID`='2';
UPDATE `recap`.`job_t` SET `JOB_NAME`='OngoingMatchingAlgorithm', `JOB_DESC`='Ongoing matching algorithm process' WHERE `JOB_ID`='3';
UPDATE `recap`.`job_t` SET `JOB_NAME`='DailyLASTransactionReconciliation', `JOB_DESC`='Generate daily LAS transaction reconciliation' WHERE `JOB_ID`='4';
UPDATE `recap`.`job_t` SET `JOB_DESC`='Generate the report for ongoing accession' WHERE `JOB_ID`='5';
UPDATE `recap`.`job_t` SET `JOB_DESC`='Ongoing accession' WHERE `JOB_ID`='6';
UPDATE `recap`.`job_t` SET `JOB_NAME`='AccessionAndMatchingJobsInSequence', `JOB_DESC`='Runs all the accession process related jobs sequentially. Jobs that are included to run in sequential are, 1) Accession 2) Accession Report 3) Matching Algorithm' WHERE `JOB_ID`='7';
UPDATE `recap`.`job_t` SET `JOB_DESC`='Purge all the accession requests which are in the status \"completed\" and 30 days older. (Number of days is configurable)' WHERE `JOB_ID`='8';
UPDATE `recap`.`job_t` SET `JOB_NAME`='PeriodicLASBarcodeReconciliation', `JOB_DESC`='Generate periodic LAS barcode reconciliation' WHERE `JOB_ID`='9';
UPDATE `recap`.`job_t` SET `JOB_DESC`='Deletion of records in SCSB tables like bibliographic, holdings, item and request are captured and email notification is sent' WHERE `JOB_ID`='10';
UPDATE `recap`.`job_t` SET `JOB_NAME`='PeriodicLASItemStatusReconciliation', `JOB_DESC`='Periodic LAS item status reconciliation' WHERE `JOB_ID`='11';

ALTER TABLE `recap`.`job_t` ADD COLUMN `JOB_INSTANCE_ID` INT NULL AFTER `STATUS`;

-- Script for Release 0.9.27 ends here


