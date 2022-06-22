ARG IMAGE_VARIANT=slim-buster
ARG OPENJDK_VERSION=17
ARG PYTHON_VERSION=3.10.5

FROM python:${PYTHON_VERSION}-${IMAGE_VARIANT} AS py3
FROM eclipse-temurin:${OPENJDK_VERSION}-jre-focal

COPY --from=py3 / /

ARG PYSPARK_VERSION=3.3.0
RUN pip --no-cache-dir install pyspark==${PYSPARK_VERSION}

ENTRYPOINT ["python"]
