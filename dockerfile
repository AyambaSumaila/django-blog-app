#FROM python:3.10-bookworm
FROM python:3.10-buster


ENV PYTHONBUFFERED=1

WORKDIR /myproject
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD gunicorn myblog.wsgi:application --blind 0.0.0.0:8000


EXPOSE 8000