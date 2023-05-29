FROM python:3
 

#WORKDIR /home/admine/Documents/Aplikacja

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR /home/app
#RUN apt-get update && apt-get install -y python3 && apt install -y python3-pip
#RUN pip install -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]
