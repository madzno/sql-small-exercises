SELECT date, round(((low + high) / 2), 1) AS mean_temperature
FROM temperatures
WHERE date >= '2016-03-02' AND
date <= '2016-03-08';

