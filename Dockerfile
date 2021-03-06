FROM Ubuntu

RUN apt-get update -y
RUN apt-get -y install python python3-pip3
RUN pip3 install flask


COPY app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
