FROM python:3.10-slim
WORKDIR /menu_app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
COPY . .
