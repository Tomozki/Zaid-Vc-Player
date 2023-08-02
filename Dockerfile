FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt-get -y update && apt-get -y install git gcc python3-dev
RUN apt-get install ffmpeg -y
COPY . /app/
WORKDIR /app/
RUN pip3 install -U pip
RUN pip3 install -U -r requirements.txt
CMD python3 main.py
