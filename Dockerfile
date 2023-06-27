# Dockerfile
FROM python:3.11

MAINTAINER Karabo Motsepe <kemwaura@gmail.com>

WORKDIR /app/gpt4free-main/Interference

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY ./gpt4free-main /app

WORKDIR /app/Interference

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

EXPOSE 1337

CMD ["flask", "run", "--host", "0.0.0.0"]
