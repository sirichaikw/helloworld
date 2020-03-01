FROM centos:latest

EXPOSE 8080

ENTRYPOINT ["/bin/ping","-c","3"]
