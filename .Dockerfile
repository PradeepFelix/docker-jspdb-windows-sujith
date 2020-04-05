FROM pradeepflx/docker-jspdb-windows

RUN powershell -Command Set-Service -Name Tomcat9 -StartupType automatic

RUN powershell -Command start-service tomcat9

COPY db.properties c:/programdata/tomcat9/webapps/root

COPY db.properties c:/programdata/tomcat9/webapps/dbtest

CMD [ "dir"]