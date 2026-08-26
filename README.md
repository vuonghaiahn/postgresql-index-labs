# PostgreSQL Index Labs

PostgreSQL indexing exercises using the `dvdrental` database.

## Lab 1: Inspecting Table Size

This lab checks the data size, index size, and total size of tables in the database.

Main results:

* `rental`: 1232 kB data, 1120 kB indexes
* `payment`: 896 kB data, 920 kB indexes
* `film`: 736 kB data, 200 kB indexes

SQL file: `lab1_table_size.sql`

## Lab 2: The Impact of a New Index

A new multicolumn index was created on the `payment` table.

Results:

* Index size before: **920 kB**
* Index size after: **1488 kB**
* New index size: **568 kB**
* Storage consumed: **71 pages of 8 kB**

SQL file: `lab2_new_index.sql`

## Lab 3: Partial Index Practice

A partial index on `replacement_cost > 25.00` was compared with a full index.

Results:

* Partial index: **16 kB**
* Full index: **40 kB**
* Storage saved: **24 kB**

SQL file: `lab3_partial_index.sql`

## Report

The full report is available in:

`11247142_VuongHaiAnh_IndexStorage.pdf`
