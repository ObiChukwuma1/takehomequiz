FROM python:3.12-rc-alpine
WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src src
EXPOSE 80


ENTRYPOINT ["python", "./src/app.py"]
