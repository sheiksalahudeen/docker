USE `recap` ;

-- Script for Release 0.9.32 starts here
UPDATE `recap`.`customer_code_t` SET `RECAP_DELIVERY_RESTRICTIONS`='EDD' WHERE `CUSTOMER_CODE`='PW';
UPDATE `recap`.`customer_code_t` SET `RECAP_DELIVERY_RESTRICTIONS`='EDD' WHERE `CUSTOMER_CODE`='PT';
UPDATE `recap`.`customer_code_t` SET `RECAP_DELIVERY_RESTRICTIONS`='EDD' WHERE `CUSTOMER_CODE`='PJ'

-- Script for Release 0.9.32 ends here


