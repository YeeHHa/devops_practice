FROM ubuntu:latest

EXPOSE 5000

RUN apt update && apt upgrade -y

RUN apt install python3 pip -y

COPY /src /workstation

RUN cd /workstation && ls -lrt && pip3 install flask

CMD ["python3", "main_engine.py"]