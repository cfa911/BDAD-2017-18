/*Mostra a tag mais utilizada em Advertisements*/
SELECT tagName, count(tagName) AS tagName_occurrence
FROM ADVERTISEMENTTAG
GROUP BY tagName
ORDER BY tagName_occurrence DESC
LIMIT 1
