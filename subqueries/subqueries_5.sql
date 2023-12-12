SELECT max(count) AS max FROM
  (SELECT count(bidder_id) FROM bids GROUP BY bidder_id) AS counts;
