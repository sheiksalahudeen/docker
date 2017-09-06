USE `recap` ;

-- Script for Release 0.9.35 starts here
UPDATE `recap`.`customer_code_t` SET `CIRC_DESK_LOCATION`='CIRCrecap' WHERE `CUSTOMER_CODE`='IC';
UPDATE `recap`.`customer_code_t` SET `DESCRIPTION`='401 Butler Library (Microforms Reading Room)' WHERE `CUSTOMER_CODE`='CF';
-- Script for Release 0.9.35 ends here


