FROM alpine:latest

RUN apk add --no-cache python3-dev py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5001

CMD ["python3", "app.py"]
