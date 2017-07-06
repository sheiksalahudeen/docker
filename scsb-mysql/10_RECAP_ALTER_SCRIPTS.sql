USE `recap` ;

-- Script for Release 0.9.28 starts here
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,IL,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='66';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,NE,NK,NI,NX,IL,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,NE,NK,NI,NX,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='67';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,IL,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='73';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,IL,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='77';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,IL,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='82';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,IL,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='88';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,IL,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='96';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,IL,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='98';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,IL,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='99';
UPDATE `recap`.`customer_code_t` SET `DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW', `PWD_DELIVERY_RESTRICTIONS`='NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW' WHERE `CUSTOMER_CODE_ID`='101';

INSERT INTO `recap`.`customer_code_t` (`CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`,`DELIVERY_RESTRICTIONS`,`PWD_DELIVERY_RESTRICTIONS`,`RECAP_DELIVERY_RESTRICTIONS`,`CIRC_DESK_LOCATION`) VALUES (106,'OA','SASB Allen Room',3,NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`customer_code_t` (`CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`,`DELIVERY_RESTRICTIONS`,`PWD_DELIVERY_RESTRICTIONS`,`RECAP_DELIVERY_RESTRICTIONS`,`CIRC_DESK_LOCATION`) VALUES (107,'OC','SASB Cullman Center',3,NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`customer_code_t` (`CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`,`DELIVERY_RESTRICTIONS`,`PWD_DELIVERY_RESTRICTIONS`,`RECAP_DELIVERY_RESTRICTIONS`,`CIRC_DESK_LOCATION`) VALUES (108,'ON','SASB Noma Scholar Room',3,NULL,NULL,NULL,NULL);
INSERT INTO `recap`.`customer_code_t` (`CUSTOMER_CODE_ID`,`CUSTOMER_CODE`,`DESCRIPTION`,`OWNING_INST_ID`,`DELIVERY_RESTRICTIONS`,`PWD_DELIVERY_RESTRICTIONS`,`RECAP_DELIVERY_RESTRICTIONS`,`CIRC_DESK_LOCATION`) VALUES (109,'OW','SASB Wertheim Study',3,NULL,NULL,NULL,NULL);

INSERT INTO `delivery_restriction_cross_partner_t` (`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`,`DELIVERY_RESTRICTIONS`,`INSTITUTION_ID`) VALUES (6,'NB,NC,ND,NE,NF,NG,NH,NI,NJ,NK,NM,NN,NO,NP,NR,NS,NT,NV,NX,NY,NZ,GO,SA,SM,SP,SR,OA,OC,ON,OW',3);

UPDATE `recap`.`cross_partner_mapping_t` SET `DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='6' WHERE `CUSTOMER_CODE_ID`='53' and`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='2';
UPDATE `recap`.`cross_partner_mapping_t` SET `DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='6' WHERE `CUSTOMER_CODE_ID`='49' and`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='2';
UPDATE `recap`.`cross_partner_mapping_t` SET `DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='6' WHERE `CUSTOMER_CODE_ID`='48' and`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='2';
UPDATE `recap`.`cross_partner_mapping_t` SET `DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='6' WHERE `CUSTOMER_CODE_ID`='45' and`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='2';
UPDATE `recap`.`cross_partner_mapping_t` SET `DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='6' WHERE `CUSTOMER_CODE_ID`='43' and`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='2';
UPDATE `recap`.`cross_partner_mapping_t` SET `DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='6' WHERE `CUSTOMER_CODE_ID`='30' and`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='2';

UPDATE `recap`.`cross_partner_mapping_t` SET `DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='6' WHERE `CUSTOMER_CODE_ID`='1' and`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='2';
UPDATE `recap`.`cross_partner_mapping_t` SET `DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='6' WHERE `CUSTOMER_CODE_ID`='25' and`DELIVERY_RESTRICTION_CROSS_PARTNER_ID`='2';

INSERT INTO `recap`.`job_t` (`JOB_ID`,`JOB_NAME`,`JOB_DESC`,`LAST_EXECUTED_TIME`,`NEXT_RUN_TIME`,`CRON_EXP`,`STATUS`,`JOB_INSTANCE_ID`) VALUES (13,'SubmitCollection','Updates the bib, holding, item information for the given barcode in marc or scsb xml format',NULL,NULL,NULL,NULL,NULL);

-- Script for Release 0.9.28 ends here


