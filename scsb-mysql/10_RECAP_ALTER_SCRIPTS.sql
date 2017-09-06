USE `recap` ;

-- Script for Release 0.9.35 starts here

UPDATE `recap`.`customer_code_t` SET `DESCRIPTION`='Schomburg Center MARB', `DELIVERY_RESTRICTIONS`='NS,NC,NK,NX,IN,SA,SM,SP,NY,SR', `PWD_DELIVERY_RESTRICTIONS`='NS,NC,NK,NX,SA,SM,SP,NY,SR' WHERE `CUSTOMER_CODE_ID`='84';

UPDATE `recap`.`customer_code_t` SET `CIRC_DESK_LOCATION`='CIRCrecap' WHERE `CUSTOMER_CODE`='IC';
UPDATE `recap`.`customer_code_t` SET `DESCRIPTION`='401 Butler Library (Microforms Reading Room)' WHERE `CUSTOMER_CODE`='CF';
-- Script for Release 0.9.35 ends here


