SELECT name, (SELECT count(bids.id) FROM bids WHERE bids.item_id = items.id)
FROM items;

