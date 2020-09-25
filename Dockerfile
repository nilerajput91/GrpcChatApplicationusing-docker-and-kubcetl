FROM golang:alpine as build-env

RUN apk add git

ENV GO111MODULE=on

RUN apk update && apk add bash ca-certificates git gcc g++ libc-dev

RUN mkdir /chatapplication

RUN mkdir -p /chatapplication/proto

WORKDIR /chatapplication

COPY ./proto/service.pd.go /chatapplication/proto

COPY ./main.go /chatapplication

COPY go.mod .
COPY go.sum .


RUN go mod download

RUN go build -o chatapplication .

CMD ./chatapplication



