USE `recap` ;

-- Script for Release 1.0.1 starts here

ALTER TABLE `recap`.`request_item_t` MODIFY EMAIL_ID VARCHAR(100);

UPDATE `recap`.`job_t` SET `JOB_DESC`='The job purges the requests that end up with \'Exception\' status and are 365 days old. The number of days is configurable.' WHERE `JOB_NAME`='PurgeExceptionRequests';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job purges the patron email addresses entered in SCSB as part of requests. In case of physical requests, it will be purged 90 days after refile and in case of EDD, 60 days from the date of fulfillment. The number of days are configurable.' WHERE `JOB_NAME`='PurgeEmailAddress';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job initiates the ongoing matching algorithm process in SCSB. The processes are typically executed daily after the accession and submit collection processes are completed.' WHERE `JOB_NAME`='OngoingMatchingAlgorithm';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job reconciles the daily LAS transactions with SCSB.' WHERE `JOB_NAME`='DailyLASTransactionReconciliation';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job generates an ongoing accession report.' WHERE `JOB_NAME`='GenerateAccessionReport';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job initiates the batch ongoing accession process where barcodes that were accumulated throughout the day are processed.' WHERE `JOB_NAME`='Accession';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job runs all the accession process related jobs sequentially. Jobs that are included to run in the sequence are 1) Accession 2) Accession report 3) Submit Collection 4) Matching Algorithm 5) Incremental and Deleted Export.' WHERE `JOB_NAME`='AccessionToDataExportJobsInSequence';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job purges all the accessions which are in \'Complete\' status and are 30 days old. The number of days is configurable.' WHERE `JOB_NAME`='PurgeAccessionRequests';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job does periodic barcode reconciliation between SCSB and LAS.' WHERE `JOB_NAME`='PeriodicLASBarcodeReconciliation';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job captures any deletion of records in SCSB tables related to bibliographic, holdings, items and requests and an email notification is sent.' WHERE `JOB_NAME`='DeletedRecords';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job does a periodic status reconciliation between SCSB and LAS.' WHERE `JOB_NAME`='PeriodicLASItemStatusReconciliation';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job loads the initial request data in SCSB.' WHERE `JOB_NAME`='RequestInitialLoad';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job updates the bib, holdings and item information for the given barcode in MARC or SCSB XML format.' WHERE `JOB_NAME`='SubmitCollection';
UPDATE `recap`.`job_t` SET `JOB_DESC`='The job runs the incremental and deleted records export job for each institution in sequence.' WHERE `JOB_NAME`='IncrementalAndDeletedExportJobInSequence';
UPDATE `recap`.`job_t` SET `JOB_NAME`='PurgeCompletedAccessions' WHERE `JOB_NAME`='PurgeAccessionRequests';

INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`) VALUES (21,'CheckAndNotifyPendingRequest','Check And Notify Pending Request',NULL,NULL,NULL,NULL);

-- Script for Release 1.0.1 ends here

