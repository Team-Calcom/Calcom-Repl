FROM python:3.9

ADD app.py .

COPY requirements.txt /opt/app/requirements.txt

WORKDIR /opt/app

RUN pip install -r requirements.txt

COPY . /opt/app

#RUN pip install matplotlib gunicorn more-itertools numpy playsound python-dateutil python-time random2 requests sympy tk wolframalpha wordcloud scipy

CMD ["python", "./app.py"]