#!/bin/bash

service tomcat6 stop

rm -Rf /home/noel/src/ingest/ogpIngest/target/
rm -f /var/lib/ogp/ogpIngest.war
rm -Rf /var/lib/tomcat6/webapps/ogpIngest/

/opt/apache-maven-3.1.0/bin/mvn clean install

cp -vf target/ogpIngest.war /var/lib/ogp/ogpIngest.war

chown -R tomcat:tomcat /var/lib/ogp/

service tomcat6 start
