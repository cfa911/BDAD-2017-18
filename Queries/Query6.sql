/*Mostra os 3 Vendors por ordem de pontuação e número de votos com pelo menos 10 votos*/
SELECT vendorID, nome, rating, numVotes FROM VENDOR
WHERE numVotes > 10
ORDER BY rating DESC, numVotes DESC
LIMIT 3
