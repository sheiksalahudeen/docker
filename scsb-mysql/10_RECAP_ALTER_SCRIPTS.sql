USE `recap` ;

-- Script for Release 1.0 starts here

UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='PA,PB,PF,PG,PH,PJ,PK,PL,PM,PN,PQ,PS,PT,PW,PZ,QA,QP,QT,IP,QC' WHERE `CUSTOMER_CODE`='GP';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='BC,BT,BZ,MP,MR,MZ,IC,CI,DC' WHERE `CUSTOMER_CODE`='MR';


UPDATE `recap`.`customer_code_t` SET `DESCRIPTION`='Schomburg Center MARB', `DELIVERY_RESTRICTIONS`='NS,NC,NK,NX,IN,SA,SM,SP,NY,SR', `PWD_DELIVERY_RESTRICTIONS`='NS,NC,NK,NX,SA,SM,SP,NY,SR' WHERE `CUSTOMER_CODE_ID`='84';

UPDATE `recap`.`customer_code_t` SET `CIRC_DESK_LOCATION`='CIRCrecap' WHERE `CUSTOMER_CODE`='IC';
UPDATE `recap`.`customer_code_t` SET `DESCRIPTION`='401 Butler Library (Microforms Reading Room)' WHERE `CUSTOMER_CODE`='CF';
-- Script for Release 1.0 ends here


