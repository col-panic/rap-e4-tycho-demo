#!/bin/sh
mvn clean verify
rm -Rf test
mkdir test
cp ../at.colpanic.e4raptycho.product.feature/target/*.war test/
echo "###############################################################"
echo "###############################################################"
echo "BROWSE TO http://localhost:8080/e4raptycho-rap/e4 AFTER STARTUP"
echo "Opens an OSGI console - use lb command to show bundles"
echo "###############################################################"
echo "###############################################################"
docker run --rm -it -p 8080:8080 -p 8443:8443 -v $PWD/test/:/var/lib/jetty/webapps/ jetty:9-jre11
