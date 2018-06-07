#
# Copyright IBM Corporation 2018
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

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
