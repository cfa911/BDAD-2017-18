-- TRIGGER #3 - add
-- Updates the highest bid


CREATE TRIGGER add_item_advert BEFORE INSERT
ON ITEM
BEGIN
	SELECT CASE
	WHEN ((SELECT count(itemID) FROM ITEM WHERE NEW.advertisementID=ITEM.advertisementID) >= 3
		)
	THEN RAISE(ABORT,'Too many items in one advertisement')
	END;
END;


CREATE TRIGGER remove_item_ghost_bids BEFORE DELETE
ON ITEM
	BEGIN
	DELETE FROM BID
	WHERE itemID = OLD.itemID;
END;
