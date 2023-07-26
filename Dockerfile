FROM python:3.8-slim-buster
ADD ./webapp/requirements.txt /opt/webapp/requirements.txt
WORKDIR /opt/webapp/
RUN pip3 install -r requirements.txt
ADD ./webapp /opt/webapp/
#WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python3", "app.py"]

