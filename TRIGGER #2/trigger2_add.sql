-- TRIGGER #2 - add


--Checks valid highest bids
CREATE TRIGGER update_valid_bid_value BEFORE INSERT
ON BID
BEGIN
	SELECT CASE
	WHEN ((SELECT highestBid FROM ITEM WHERE NEW.itemID=ITEM.itemID) >= NEW.value
			OR NEW.value < 0
			OR (SELECT startTime FROM ITEM WHERE NEW.itemID=ITEM.itemID) > NEW.dateV
			OR (SELECT closeTime FROM ITEM WHERE NEW.itemID=ITEM.itemID) < NEW.dateV)
	THEN RAISE(ABORT,'Invalid Bid')
    END;
END;


-- Updates the highest bid
CREATE TRIGGER update_highest_bid_value AFTER INSERT
ON BID
BEGIN
	UPDATE ITEM SET highestBid = NEW.value
	WHERE  ITEM.itemID = NEW.itemID;
END;
