#Dockerfile 

FROM python:3.11

MAINTAINER Karabo Motsepe "kemwaura@gmail.com"

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /Interference

WORKDIR Interference

ENV FLASK_APP=Interference/app.py

ENV FLASK_ENV=development

EXPOSE 1337

CMD ["flask", "run", "--host", "0.0.0.0"]
