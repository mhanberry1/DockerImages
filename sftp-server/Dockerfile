from alpine

# User defined variables
arg USER="changeme"
arg USER_PASS="changeme"

# Add files
add authorized_keys /tmp/authorized_keys

run \
	# Install dependencies
	apk --no-cache add openssh-server openssh && \
	# Create run directory
	mkdir /run/sshd && \
	# Generate keys
	ssh-keygen -A && \
	# Create new user
	adduser -D $USER && \
	echo $USER:"$USER_PASS" | chpasswd && \
	# Add authorized keys
	mkdir /home/$USER/.ssh && \
	cp /tmp/authorized_keys /home/$USER/.ssh && \
	chown -R $USER:$USER /home/$USER/.ssh

# Run the ssh daemon
cmd /usr/sbin/sshd -D
