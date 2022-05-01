FROM python:3.8 AS buildStage

RUN mkdir -p /app
WORKDIR /app
COPY . /app/

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["manage.py migrate"] 