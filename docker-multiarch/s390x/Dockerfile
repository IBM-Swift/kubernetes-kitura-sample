FROM ibmcom/swift-ubuntu-xenial:latest

MAINTAINER IBM Swift Engineering at IBM Cloud
LABEL Description="Swift sample for IBM Cloud Private deployment on s390x."

# Expose default port for Kitura
EXPOSE 8080

RUN mkdir /Kitura-Server

ADD Sources /Kitura-Server/Sources
ADD Package.swift /Kitura-Server
ADD Package.resolved /Kitura-Server
ADD LICENSE /Kitura-Server
ADD .swift-version /Kitura-Server
RUN cd /Kitura-Server && swift build -Xlinker -ldl -Xlinker -lpthread

#CMD ["/Kitura-Server/.build/debug/Kitura-Server"]
CMD [ "sh", "-c", "cd /Kitura-Server && .build/s390x-unknown-linux/debug/Kitura-Server" ]
