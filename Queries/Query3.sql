/*Lista de todos os users com a highestBid e os respetivos IDs e nomes dos items */
SELECT ITEM.buyerID,ITEM.name, highestBid, USER.nome FROM ITEM,USER
WHERE ITEM.buyerID = USER.userID
