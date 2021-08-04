// Select Portfolio Candidate along with current identityAddress
// Returns Candidate and Current Home IdentityAddress
SELECT FIRSTNAME, LASTNAME, TITLE, SUMMARY, EMAIL, PHONE, BUILDINGNUMBER, STREET,
       PARISHTOWNCITY, STATEPROVINCE, REGION, COUNTRY, POSTALCODE
FROM PORTFOLIO P
         INNER JOIN CANDIDATE C on (P.CANDIDATE_ID = C.ID)
         INNER JOIN CANDIDATEADDRESS H on (C.ID = H.CANDIDATE_ID)
WHERE P.ID = 1 AND H.CURRENT = TRUE;


// Select Portfolio Educational Background
// Returns All Entries in Educational Background
SELECT INSTITUTION, COURSE, ADDRESS, STARTDATE, ENDDATE
FROM PORTFOLIO P
         INNER JOIN EDUCATIONALBACKGROUND E on P.ID = E.PORTFOLIO_ID
WHERE PORTFOLIO_ID = 1;