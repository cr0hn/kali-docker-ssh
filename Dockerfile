FROM kalilinux/kali-linux-docker


## Install an SSH of your choice.
RUN echo 'root:root' |chpasswd

RUN apt install -y openssh-server && apt clean

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

CMD    ["/usr/sbin/sshd", "-D"]
