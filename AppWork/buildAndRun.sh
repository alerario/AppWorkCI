#!/bin/sh
mvn clean package && docker build -t br.alerario/AppWork .
docker rm -f AppWork || true && docker run -d -p 9080:9080 -p 9443:9443 --name AppWork br.alerario/AppWork