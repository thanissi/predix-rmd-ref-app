#! /usr/bin/env bash

mvn clean install -f machinedata-simulator/pom.xml
mvn clean install -f predix-dataingestion-service/pom.xml -DskipTests

cf push -f predix-dataingestion-service/manifest.yml 
cf push -f machinedata-simulator/manifest.yml
