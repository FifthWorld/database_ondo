--Changes added on Monday, 04/08/2013 by Sam

ALTER TABLE application.application_historic
ADD document_verified boolean NOT NULL DEFAULT false;

--Table changes to the party and party_historic table to support date of birth on Tuesday, 09 April 2013
ALTER table party.party
ADD date_of_birth date;

ALTER TABLE party.party_historic
ADD date_of_birth date;



