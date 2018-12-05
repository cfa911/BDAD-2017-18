/*Lista de todas as bids ativas*/
SELECT dateV, value, BID.buyerID, BUYER.nome, BID.ItemID, ITEM.name FROM BID, ITEM, BUYER
WHERE BID.value = ITEM.highestBid AND BUYER.buyerID=BID.buyerID AND strftime(ITEM.closeTime) < strftime(CURRENT_TIMESTAMP)
GROUP BY BID.buyerID
ORDER BY BID.value DESC
