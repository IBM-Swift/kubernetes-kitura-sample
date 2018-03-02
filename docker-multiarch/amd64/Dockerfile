FROM ibmcom/swift-ubuntu-xenial:latest

MAINTAINER IBM Swift Engineering at IBM Cloud
LABEL Description="Swift sample for IBM Cloud Private deployment on amd64."

# Expose default port for Kitura
EXPOSE 8080

RUN mkdir /Kitura-Server

ADD Sources /Kitura-Server/Sources
ADD Package.swift /Kitura-Server
ADD Package.resolved /Kitura-Server
ADD LICENSE /Kitura-Server
ADD .swift-version /Kitura-Server
RUN cd /Kitura-Server && swift build

#CMD ["/Kitura-Server/.build/debug/Kitura-Server"]
CMD [ "sh", "-c", "cd /Kitura-Server && .build/x86_64-unknown-linux/debug/Kitura-Server" ]
