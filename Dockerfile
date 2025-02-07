FROM python:3.13-slim@sha256:ae9f9ac89467077ed1efefb6d9042132d28134ba201b2820227d46c9effd3174

WORKDIR /config-merger

ADD . /config-merger/

RUN apt-get update && apt-get install -y make curl

RUN python -m pip install --upgrade pip && pip3 install .
RUN rm -rf /config-merger/*
