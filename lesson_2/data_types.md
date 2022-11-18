1. `varchar(n)` and `text` both store textual data in the form of strings. However, `varchar` stores up to `n` characters while `text` columns have no limit to the number of characters.

2. They all store numeric data. `integer` data columns store whole numbers. `decimal(precision, exact)` data columns are non-floating-point fractional values with limited precision; that is they are passed a user-specified `precision` and `exact` value. `real` datatypes are floating point numbers that can include fractional values.

3. 2147483647

4. They are both date/time data types. `timestamp` includes the date in year-month-day format as well as the time in hour-minute-second format. `date` includes only the date (no time).

5. No, but there is a `timestamp with time zone` or `timestamptz` data type that can store a timestamp with a timezone.
