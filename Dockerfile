FROM docker:18.03-dind

RUN apk add --no-cache git alpine-sdk

COPY --from=golang:1.15-alpine /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"
ENV GOPATH=/opt/go/ 
ENV PATH=$PATH:$GOPATH/bin 

RUN go get -u github.com/jstemmer/go-junit-report
