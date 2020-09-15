FROM golang:1.15-alpine

RUN apk --no-cache add gcc g++ make git ca-certificates
RUN go get golang.org/x/tools/cmd/present

COPY ./content /app/content

EXPOSE 3999

WORKDIR /app/content

CMD ["present", "-http=0.0.0.0:3999", "-play=false"]
