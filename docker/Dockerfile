FROM ubuntu:16.10

# Allow API connections (INSECURE)
#EXPOSE 9980
#TODO: do not expose 9980, use --link instead

# Allow Connections to Cluster
EXPOSE 9981 9982

# Install Golang 1.7.3
RUN apt-get update && apt-get -y install wget git
RUN wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go*.tar.gz

ENV PATH $PATH:/usr/local/go/bin

ENV GOPATH /opt/sia-gopath
RUN mkdir -p ${GOPATH}

RUN go get -u github.com/wkronmiller/Sia/...

ENTRYPOINT ${GOPATH}/bin/siad --authenticate-api=true --disable-api-security --api-addr 0.0.0.0:9980
