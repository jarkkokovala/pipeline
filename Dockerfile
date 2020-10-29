FROM python:alpine

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["flask"]
ENV FLASK_APP=app.py

CMD ["run", "-h", "0.0.0.0", "-p", $PORT]
