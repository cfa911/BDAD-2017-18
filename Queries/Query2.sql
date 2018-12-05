/*Lista de todos os anúncios com a tag "Outdoor"*/
SELECT ADVERTISEMENT.advertisementID,description FROM ADVERTISEMENT,ADVERTISEMENTTAG
WHERE ADVERTISEMENTTAG.tagName = "Outdoor" AND ADVERTISEMENTTAG.advertisementID = ADVERTISEMENT.advertisementID
