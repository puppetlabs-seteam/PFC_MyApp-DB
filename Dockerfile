# Derived from official mysql image (our base image)
FROM mysql:8.0.12

# Ensure the following variables are defined in PfC to setup database
# MYSQL_DATABASE       <dbname>
# MYSQL_USER           <db user name>
# MYSQL_PASSWORD       <db user pass>
# MYSQL_ROOT_PASSWORD  <mysql root pass>

# Define the volume for persistent data
VOLUME ["/var/lib/mysql"]

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/
