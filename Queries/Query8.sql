/*Lista de items sem nenhuma bid (bid = 0)*/
SELECT itemID, name, advertisementID FROM ITEM
WHERE highestBid = 0
