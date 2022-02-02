FROM ubuntu:latest

RUN apt update & apt upgrade -y 

RUN apt install python3 && apt install pip3

RUN pip3 install flask 

RUN mkdir flask_project && cd flask_project

COPY ../main_engine.py ./flask_project/

CMD ["python3 ./flask_project/main_engine.py"]
