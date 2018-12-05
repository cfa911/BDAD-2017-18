/*Mostra todos os advertisements do VENDOR 12349 e o seu nome*/

SELECT advertisementID,description,ADVERTISEMENT.vendorID,nome FROM ADVERTISEMENT, VENDOR
WHERE ADVERTISEMENT.vendorID = VENDOR.vendorID AND ADVERTISEMENT.vendorID = 12349
