from pyspark.sql import SparkSession

spark = SparkSession.builder.getOrCreate()
print(spark.version)
