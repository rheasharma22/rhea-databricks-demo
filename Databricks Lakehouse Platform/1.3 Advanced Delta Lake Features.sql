-- Databricks notebook source
describe detail employees_rs

-- COMMAND ----------

select * from employees_rs version as of 1

-- COMMAND ----------

select * from employees_rs@v1

-- COMMAND ----------

delete from employees_rs

-- COMMAND ----------

select * from employees_rs

-- COMMAND ----------

restore table employees_rs TO VERSION AS OF 3

-- COMMAND ----------

select * from employees_rs

-- COMMAND ----------

describe history employees_rs

-- COMMAND ----------

describe detail employees_rs

-- COMMAND ----------


