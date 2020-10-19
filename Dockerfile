FROM golang:1.14

WORKDIR /go/src/github.com/ajvb/kala
COPY . .
RUN go build && mv kala /usr/bin

CMD ["./run.sh"]
EXPOSE 8000
