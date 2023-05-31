FROM python:3

RUN mkdir -p /home/app

COPY . /home/app

WORKDIR /home/app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]
