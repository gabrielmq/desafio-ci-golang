FROM golang:1.14-alpine as builder

WORKDIR /go/src

COPY ./src .

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" main.go

#############

FROM scratch 

WORKDIR /go/src

COPY --from=builder /go/src .

CMD [ "./main" ]