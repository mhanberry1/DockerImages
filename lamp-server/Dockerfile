from alpine

# User defined variables
arg MYSQL_ROOT_PASS="changeme"
arg MYSQL_USER="changeme"
arg MYSQL_USER_PASS="changeme"
arg MYSQL_DATABASE="changeme"

# Add files
add init.sql /tmp/init.sql

run \
	# Add dependencies
	apk add --no-cache mysql apache2 php7-apache2 php7-mysqli && \
	# Set up environment
	mkdir /run/mysqld /run/apache2 && \
	chown mysql:mysql /run/mysqld && \
	# Format init.sql
	sed -i \ 
		-e "s/\$MYSQL_ROOT_PASS/$MYSQL_ROOT_PASS/g" \
		-e "s/\$MYSQL_USER/$MYSQL_USER/g" \
		-e "s/\$MYSQL_USER_PASS/$MYSQL_USER_PASS/g" \
		-e "s/\$MYSQL_DATABASE/$MYSQL_DATABASE/g" \
	/tmp/init.sql && \
	# Set up database
	mysql_install_db --user=mysql && \
	mysqld --user=mysql --bootstrap --verbose=0 < /tmp/init.sql && \
	# Clean up
	rm /tmp/init.sql

# Run the httpd and mysqld daemons
cmd httpd && mysqld --user=mysql
