-- Databricks notebook source
-- MAGIC %fs rm -r dbfs:/user/hive/warehouse/employee

-- COMMAND ----------

CREATE TABLE employees_rs
(id INT, name STRING, salary DOUBLE)
USING DELTA;

-- COMMAND ----------

insert into employees_rs
values
(1,"Adam",3500.0),
(2,"Sarah",4020.5),
(3,"John",2999.3),
(4,"Thomas",4000.3),
(5,"Anna",2500.0),
(6,"Kim",6200.3)

-- COMMAND ----------

select * from employees_rs

-- COMMAND ----------

describe detail employees_rs

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_rs'

-- COMMAND ----------

UPDATE employees_rs
SET salary = salary + 100
WHERE name LIKE "A%"

-- COMMAND ----------

select * from employees_rs

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_rs'

-- COMMAND ----------

describe detail employees_rs

-- COMMAND ----------

select * from employees_rs

-- COMMAND ----------

describe history employees_rs

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_rs/_delta_log'

-- COMMAND ----------

-- MAGIC %fs head 'dbfs:/user/hive/warehouse/employees_rs/_delta_log/00000000000000000003.json'
