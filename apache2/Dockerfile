from alpine

workdir /var/www/

run \
	# Add dependencies
	apk --no-cache add apache2 php7-apache2 && \
	# Create /run/apache2
	mkdir /run/apache2

cmd httpd -DFOREGROUND
