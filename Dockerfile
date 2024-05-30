FROM python:3.11.2-alpine3.16 AS builder

RUN apk update
RUN apk --no-cache add musl-dev g++
COPY requirements requirements
RUN python -m venv /.venv
ENV PATH="/.venv/bin:$PATH"