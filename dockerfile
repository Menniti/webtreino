#env GOOS=linux GOARCH=amd64 go build
#docker build -t mercurius:webtreino .
#docker run -p 8080:8080 -d mercurius:webtreino

FROM scratch

ADD webtreino /
ADD conf/ /conf
ADD public/ /public
ADD locale/ /locale

CMD [ "/webtreino" ]