# Use official Tomcat 9 image
FROM tomcat:9.0

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat (ROOT app)
COPY target/table-tennis-hub.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
