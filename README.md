# PySpark in Docker

Just an image for running PySpark. 



##### Default versions

- OpenJDK -> eclipse-temurin:17-jre-focal

- Python -> python:3.10.5-slim-buster

- PySpark -> 3.3.0

  

You can however specify OpenJDK, Python, PySpark versions and image variant when building.

```bash
$ docker build -t pyspark --build-arg PYTHON_VERSION=3.7.10 --build-arg IMAGE=buster .
```



#### Running

Default entrypoint is "python", so you will be interfacing directly Python Shell

```bash
$ docker run -it pyspark

Python 3.9.8 (main, Nov 10 2021, 03:21:27) 
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> from pyspark.sql import SparkSession
>>> 
>>> spark = SparkSession.builder.getOrCreate()
Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
21/11/13 23:44:54 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
>>> 
>>> spark.version
'3.2.0'
>>> 
```
