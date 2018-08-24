# Derived from official mysql image (our base image)
FROM mysql:8.0.12

# Add a database
ENV MYSQL_DATABASE MyApp_database
ENV MYSQL_USER MyApp_dbuser
ENV MYSQL_PASSWORD MyApp_dbpass
ENV MYSQL_RANDOM_ROOT_PASSWORD yes

# Define the volume for persistent data
VOLUME ["/var/lib/mysql"]

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/
