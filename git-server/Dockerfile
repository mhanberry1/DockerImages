from alpine
workdir /home/git

add id_rsa.pub /tmp

run \
	# Creat git user
	adduser -D git && \
	# Create filesystem
	mkdir .ssh && chmod 700 .ssh && \
	touch .ssh/authorized_keys && chmod 600 .ssh/authorized_keys && \
	# Install dependencies
	apk add --no-cache openssh-server && \
	# Configure ssh
	echo "PasswordAuthentication no" >> /etc/ssh/sshd_config && \
	echo "AllowUsers root git" >> /etc/ssh/sshd_config && \
	cat /tmp/id_rsa.pub >> /home/git/.ssh/authorized_keys && \
	mkdir /root/.ssh && \
	cat /tmp/id_rsa.pub >> /root/.ssh/authorized_keys && \
	ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa && \
	ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa && \
	mkdir -p /var/run/sshd && \
	# Clean up
	rm /tmp/*

cmd /usr/sbin/sshd -D
