ARG FROM

FROM ${FROM}

# user name
ARG USER=foo

RUN \
	# Set the root password 'root'
	echo 'root:root' | chpasswd && \
	# Add a normal privilege user
	useradd -m ${USER} && \
	# Allow the user to 'sudo' without password
	echo "${USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# login as a normal privilege user
USER ${USER}
WORKDIR /home/${USER}
