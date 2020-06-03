FROM python:slim-buster

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt

WORKDIR /app

COPY ./app .

CMD ["python", "app.py" ]