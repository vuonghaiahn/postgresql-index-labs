# PostgreSQL Index Labs

PostgreSQL indexing exercises using the `dvdrental` database.

## Lab 1: Inspecting Table Size
Inspect table data size, index size, and total relation size to identify index-heavy tables.

- SQL: `lab1_table_size.sql`
- Result: `screenshots/lab1_result.png`

## Lab 2: The Impact of a New Index
A multicolumn index was created on the `payment` table.

- New index size: **568 kB**
- 8 KB pages consumed: **71 pages**
- SQL: `lab2_new_index.sql`
- Result: `screenshots/lab2_result.png`

## Lab 3: Partial Index Practice
A partial index on `replacement_cost > 25.00` was compared with a full index.

- Partial index: **16 kB**
- Full index: **40 kB**
- SQL: `lab3_partial_index.sql`
- Result: `screenshots/lab3_result.png`
