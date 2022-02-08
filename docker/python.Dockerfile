FROM ubuntu:latest

EXPOSE 5000

RUN apt update && apt upgrade -y

RUN apt install python3 pip -y

COPY ./src/ /workstation/

RUN cd /workstation && pip3 install -r requirements.txt

CMD ['python3 main_engine.py']