# Databricks notebook source
print("hello world!")

# COMMAND ----------

# MAGIC %sql
# MAGIC select "hello world SQL"

# COMMAND ----------

# MAGIC %md
# MAGIC # Title 1
# MAGIC ## Title 2
# MAGIC ### Title 3
# MAGIC
# MAGIC **bold** and *italicized* 
# MAGIC
# MAGIC Ordered list:
# MAGIC 1. one
# MAGIC 2. two
# MAGIC 3. three
# MAGIC
# MAGIC Unordered list:
# MAGIC * apple
# MAGIC * pear
# MAGIC * orange
# MAGIC
# MAGIC Images:
# MAGIC ![Associate-badge](https://www.databricks.com/wp-content/uploads/2022/04/associate-badge-eng.svg)
# MAGIC
# MAGIC Tables:
# MAGIC
# MAGIC | user_id | user_name |
# MAGIC | ------- | --------- |
# MAGIC |    1    |   Adam    |
# MAGIC
# MAGIC Links (or embedded HTML):
# MAGIC <a href="https://docs.databricks.com/notebooks/notebook-manage.html" target="_blank"> Managing Notebooks Documentation</a>

# COMMAND ----------

# MAGIC %run ./Includes/Setup

# COMMAND ----------

# MAGIC %fs ls '/databricks-datasets'

# COMMAND ----------

dbutils.help()

# COMMAND ----------

dbutils.fs.help()

# COMMAND ----------

files = dbutils.fs.ls('/databricks-datasets/')
print(files)

# COMMAND ----------

display(files)
