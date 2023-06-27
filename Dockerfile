#Dockerfile 

FROM python:3.11

MAINTAINER Karabo Motsepe "kemwaura@gmail.com"

COPY . .

RUN pip install -r requirements.txt

COPY . /Interference

WORKDIR Interference

ENV FLASK_APP=Interference/app.py

ENV FLASK_ENV=development

EXPOSE 1337

CMD ["flask", "app", "--host", "0.0.0.0"]
