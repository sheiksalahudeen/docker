USE `recap` ;

ALTER TABLE `request_item_t` CHANGE `CREATD_DATE` `CREATED_DATE` DATETIME;

ALTER TABLE `request_item_t` ADD COLUMN `REQUESTING_INST_ID` INT NOT NULL;

ALTER TABLE `request_item_t` ADD INDEX `REQUESTING_INST_ID_FK_idx` (`REQUESTING_INST_ID` ASC);

ALTER TABLE `request_item_t` ADD CONSTRAINT `REQUESTING_INST_ID_FK` FOREIGN KEY (`REQUESTING_INST_ID`) REFERENCES `institution_t` (`INSTITUTION_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

UPDATE `request_type_t` SET `REQUEST_TYPE_CODE`='BORROW DIRECT', `REQUEST_TYPE_DESC`='BORROW DIRECT' WHERE `REQUEST_TYPE_ID`='5';

DROP INDEX OCLC_idx ON matching_bib_t;

DROP INDEX ISBN_idx ON matching_bib_t;

DROP INDEX ISSN_idx ON matching_bib_t;

ALTER TABLE matching_bib_t MODIFY COLUMN OCLC VARCHAR(1500);

ALTER TABLE matching_bib_t MODIFY COLUMN ISBN VARCHAR(1500);

ALTER TABLE matching_bib_t MODIFY COLUMN ISSN VARCHAR(1500);
