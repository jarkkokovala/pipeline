FROM python:alpine

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py

CMD "./run-flask.sh"
