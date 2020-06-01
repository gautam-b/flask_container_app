FROM python:slim-buster

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt

COPY ./app /app

WORKDIR /app

ENTRYPOINT [ "python"] 

CMD ["app.py" ]