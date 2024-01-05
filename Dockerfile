FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3.8
ENTRYPOINT ["python3"]

FROM python:3.8

WORKDIR /

COPY . .

RUN pip install -r requirements.txt

EXPOSE 90

ENTRYPOINT ["python", "test.py"]
