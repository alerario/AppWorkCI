@echo off
call mvn clean package
call docker build -t br.alerario/AppWork .
call docker rm -f AppWork
call docker run -d -p 9080:9080 -p 9443:9443 --name AppWork br.alerario/AppWork