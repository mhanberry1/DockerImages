from ubuntu

add nginx.conf /tmp/nginx.conf

workdir /app

run \
	apt update && \
	apt install -y wget unzip build-essential libpcre3 libpcre3-dev libssl-dev zlib1g-dev && \
	wget http://nginx.org/download/nginx-1.15.1.tar.gz && \
	wget https://github.com/sergey-dryabzhinsky/nginx-rtmp-module/archive/dev.zip && \
	tar -zxvf nginx-1.15.1.tar.gz && \
	unzip dev.zip;
run \
	cd nginx-1.15.1 && \
	./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-dev && \
	make -j`nproc` && \
	make install && \
	cat /tmp/nginx.conf >> /usr/local/nginx/conf/nginx.conf

cmd /usr/local/nginx/sbin/nginx -g 'daemon off;'
