## ETL Decisions

### Decision 1 — Standardizing Category Names

Problem:
The raw dataset contains inconsistent category names such as "electronics", "Electronics", and "ELECTRONICS". This inconsistency makes grouping and analysis difficult.

Resolution:
All category values were standardized to proper case (Electronics, Clothing, Grocery) before loading them into the dim_product table. This ensures consistent reporting when aggregating sales by category.

### Decision 2 — Handling Missing Store City Values

Problem:
Some rows in the raw dataset contain NULL or missing values for the store_city column.

Resolution:
These records were cleaned by either filling the correct city based on the store_name or removing invalid rows if the correct information could not be determined.

### Decision 3 — Converting Date Format

Problem:
The raw dataset stores dates in a text format such as "29-08-2023", which cannot be easily used for time-based analysis.

Resolution:
Dates were converted into a standard SQL DATE format (YYYY-MM-DD) and loaded into a dedicated dim_date table. This allows efficient month and year based analytical queries.
