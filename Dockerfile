FROM python:3.11-alpine3.16

ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1
WORKDIR /app

RUN apk add --no-cache git && \
apk add --update --no-cache postgresql-client && \
apk add --update --no-cache build-base postgresql-dev musl-dev


COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . ./