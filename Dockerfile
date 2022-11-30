
FROM golang:1.19.3-bullseye AS builder

WORKDIR /project_one_api

COPY . ./

RUN go mod download

RUN go build -o /project_one_api

EXPOSE 8080

CMD [ "/project_one_api" ]