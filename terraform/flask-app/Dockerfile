FROM python:3.9-slim

WORKDIR /flask-app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=main.py
EXPOSE 8080
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]