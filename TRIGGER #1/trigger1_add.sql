-- TRIGGER #1 -
-- Updates the highest bid


--Checks valid highest bids
CREATE TRIGGER add_vote
AFTER INSERT ON VOTE
BEGIN
	UPDATE VENDOR
	SET numVotes = numVotes + 1,rating = rating + (rating - NEW.vote)/numVotes
	WHERE rating < NEW.vote AND vendorID = NEW.vendorID;
	UPDATE VENDOR
	SET numVotes = numVotes + 1,rating = rating - (rating - NEW.vote)/numVotes
	WHERE rating > NEW.vote AND vendorID = NEW.vendorID;
END;

CREATE TRIGGER before_vote
BEFORE INSERT ON VOTE
BEGIN
SELECT CASE
	WHEN NEW.buyerID = NEW.vendorID
	THEN RAISE(ABORT,'Invalid vote')
	END;
END;
