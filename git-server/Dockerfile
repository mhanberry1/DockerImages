from alpine

# User defined variables
arg GIT_PASS="changeme"

# Add files
add authorized_keys /tmp
add newrepo.sh /tmp

run \
	# Install dependencies
	apk --no-cache add openssh-server git && \
	# Create run directory
	mkdir /run/sshd && \
	# Generate keys
	ssh-keygen -A && \
	# Create git user
	adduser -D git && \
	echo git:"$GIT_PASS" | chpasswd && \
	# Add authorized keys
	mkdir --mode=700 /home/git/.ssh && \
	mv /tmp/authorized_keys /home/git/.ssh && \
	chown -R git:git /home/git/.ssh && \
	chmod 600 /home/git/.ssh/authorized_keys && \
	# Create /git directory
	mkdir --mode=700 /git && \
	chown git:git /git && \
	# Configure ssh
	echo "PasswordAuthentication no" >> /etc/ssh/sshd_config && \
	# Create newrepo command
	mv /tmp/newrepo.sh /usr/bin/newrepo && \
	chmod 755 /usr/bin/newrepo

# Run the ssh daemon
cmd /usr/sbin/sshd -D
