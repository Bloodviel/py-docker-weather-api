FROM python:3.11.0-slim
LABEL maintainer="bloodviel@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py", "0.0.0.0:8000"]