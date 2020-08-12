# PySpark in Docker

Just an image for running PySpark. 



##### Default versions

- OpenJDK -> openjdk:8-slim-buster

- Python -> python:3.7.8-slim-buster

- PySpark -> 3.0.0

  

You can however specify OpenJDK, Python, PySpark versions and image variant when building.

```bash
$ docker build -t pyspark --build-arg PYTHON_VERSION=3.6.10 --build-arg IMAGE=buster
```



#### Running

Default entrypoint is "python", so you will be interfacing directly Python Shell

```bash
$ docker run -it pyspark

Python 3.7.7 (default, Mar 31 2020, 15:56:51) 
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> from pyspark.sql import SparkSession
>>> 
>>> 
>>> spark = SparkSession.builder.getOrCreate()
20/04/03 15:01:25 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
Using Spark's default log4j profile: org/apache/spark/log4j-defaults.properties
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
>>> 
>>> 
>>> spark.version
'2.4.5'
>>> 
```

