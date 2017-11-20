FROM golang:1.8.0-alpine

ENV SRC_DIR=/go/src/github.com/hhollenstain/go-kafka-example
COPY ./ $SRC_DIR
ENV SRC_DIR=/go/src/github.com/hhollenstain/go-kafka-example/cmd/producer
WORKDIR $SRC_DIR
RUN go build -o main ./
ENV SRC_DIR=/go/src/github.com/hhollenstain/go-kafka-example/cmd/consumer
WORKDIR $SRC_DIR
RUN go build -o main ./
CMD ["/go/src/github.com/hhollenstain/go-kafka-example/main"]
