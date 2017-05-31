USE `recap` ;

-- Script for Release 0.9.25 starts here
SET SQL_SAFE_UPDATES = 0;

DELETE FROM RECAP.USER_ROLE_T WHERE USER_ID IN (SELECT USER_ID FROM USER_T WHERE LOGIN_ID='superadmin');
DELETE FROM RECAP.USER_T WHERE LOGIN_ID='superadmin';

SET SQL_SAFE_UPDATES = 1;
-- Script for Release 0.9.25 ends here


