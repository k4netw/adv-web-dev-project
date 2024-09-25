FROM alpine:latest

WORKDIR /usr/src/app

RUN apk add --no-cache bash curl

CMD ["sh"]
