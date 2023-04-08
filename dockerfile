FROM golang:latest

WORKDIR /app

COPY . .

RUN GOARCH=amd64 go build -o main .

EXPOSE 8080

CMD ["/app/main"]