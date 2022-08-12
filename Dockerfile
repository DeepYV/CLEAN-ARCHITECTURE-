
FROM golang:alpine 
WORKDIR /app
COPY . .
RUN go get -d -v ./...

RUN go install -v ./...
RUN go build -o /app/main .
ENV PORT = 8080
EXPOSE 8080

CMD ["./main"]