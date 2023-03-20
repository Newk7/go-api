FROM golang:alpine

WORKDIR /app

COPY go.mod ./

COPY . .

RUN go get -d -v ./...

RUN go build -o api .

EXPOSE 8000

CMD ["./api"]
