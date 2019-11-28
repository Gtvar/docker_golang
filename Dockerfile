FROM golang:alpine
ARG APP
ENV APP $APP
ENV GOPATH /app
ENV PATH /app/bin:$PATH

RUN mkdir /app
ADD . /app
WORKDIR /app/src/${APP}/
RUN go build -o "${APP}" .
RUN chmod +x ${APP}
CMD ["/bin/sh", "-c", "/app/src/${APP}/${APP}"]


#docker build -t my-go-alpine . --build-arg APP=main
#docker run -it -p 8080:8081 my-go-alpine
