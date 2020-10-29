FROM python:alpine

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py

ENTRYPOINT ["/bin/sh"]
CMD ["-c", "/app/run-flask.sh"]
