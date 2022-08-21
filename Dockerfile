FROM python:3.6

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /Project

WORKDIR /Project

COPY . /Project/

RUN pip install --upgrade pip && pip install pip-tools && pip install -r requirements.txt 