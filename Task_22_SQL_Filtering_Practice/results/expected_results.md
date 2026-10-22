# Expected Results — Task 22

These are result intentions, not fabricated row-by-row outputs. Run the SQL against your imported Northwind database to capture the actual rows.

| # | Operator / concept | What the result should show |
|---|---|---|
| 1 | `WHERE` text match | Customers whose city is London |
| 2 | `WHERE` numeric comparison | Products priced above 20, highest price first |
| 3 | `WHERE` + `AND` | Products with stock remaining and not discontinued |
| 4 | `WHERE` + `OR` | Customers in Germany or France |
| 5 | `IN` | Orders shipped to the USA, Canada, or Mexico |
| 6 | `IN` | Products whose category ID is 1, 2, or 3 |
| 7 | `BETWEEN` | Products priced from 10 through 30, inclusive |
| 8 | `BETWEEN` | Orders dated within 1997; check date/time handling in your schema |
| 9 | `LIKE 'A%'` | Customer company names beginning with A |
| 10 | `LIKE '%choc%'` | Product names containing “choc” (case sensitivity depends on collation) |
| 11 | `LIKE '%Sales%'` | Customer contact titles containing “Sales” |
| 12 | Combined filters | Products beginning with C, priced 5–25 inclusive, with stock available |

## Interview questions
- **`LIKE` vs `=`:** `=` checks exact equality; `LIKE` supports pattern matching with wildcards such as `%` (zero or more characters) and `_` (one character).
- **When use `BETWEEN`?** When filtering a value within an inclusive lower and upper bound, such as a price range. For datetime columns, a half-open range (`>= start AND < next_day`) is often safer than `BETWEEN` with a date-only upper bound.
