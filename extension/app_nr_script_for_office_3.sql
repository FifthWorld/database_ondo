DROP SEQUENCE IF EXISTS application.application_nr_seq;

--application number sequence updated by Sam on 4/08/2013 at 1:28am-- it is expected to start from one and loop through to 99999
--each office should have a different sequence range. Considering three offices now, the chosen convention would be as follows
---office 1: 1-1,999,999
---office 2: 2,000,000-3,999,999
---office 3: 3,000,000-4,999,999
---the following sequence would  be for office 1
CREATE SEQUENCE application.application_nr_seq
	INCREMENT 1
	MINVALUE 3000000
	MAXVALUE 4999999
	START 3000000
	CACHE 1;