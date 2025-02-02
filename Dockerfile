M ubuntu:20.04
WORKDIR /opt/pas
RUN mkdir -p /opt/pas
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install flask
RUN adduser sam
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080

