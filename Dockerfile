FROM python:slim-buster

COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt

COPY ./app /app

WORKDIR /app

ENTRYPOINT [ "python"] 

CMD ["app.py" ]