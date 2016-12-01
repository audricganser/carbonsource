#Editing the DB Schema

Our main database is a relational DB (Particularly Postgresql)

We are using a mysqlworkbench schema to visualize this - it's under /db

This document outlines the naming conventions for the database


## General Naming Guideline

* Only use lower case leteers
* Use underscores to separate words  i.e. : *lower_case_table_name*
* The name should be **descriptive**

## 1. Tables:

The name should describe what type of data the table contains. 

### Related tables

We can have related tables have the same prefix, For example:

Contact information of an entity, and the country that they reside in are extremely related. Furthermore, they represent information connected to a certain entity - so we can prefix it with *'info'*

* info_country
* info_contact

### Primary keys

**Name Format: 'table_name' + '_id'**

* Type : Integer
* Name of Row : *table_name_id*

## 2. Rows/Tuples

**Name Format: 'table_name' + 'field_name'**

The field_name is just the descriptor of the data that the row will contain. You should ideally shorten the *table_name* (to something like tbl_name) for the field

**However:** Only do this if you can make it descriptive, for example:


* table_name : 'organization'
* field_name : 'location'
* Name of Row : 'table_name' + 'field_name' = *org_location*

We shortened 'organization' to 'org', but its still descriptive

