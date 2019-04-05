FROM alpine:latest

WORKDIR /joc
COPY . /joc

RUN apk add python
RUN apk add python3
RUN apk add npm
RUN apk add git

RUN git clone https://github.com/lanhel/pywumpus

RUN npm install web-terminal -g

CMD ["web-terminal", "--port", "8088"]
