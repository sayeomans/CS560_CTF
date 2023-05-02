FROM kalilinux/kali-rolling:latest
RUN apt-get update
RUN apt-get install -y netcat-traditional
RUN apt-get install -y openssh-server
RUN adduser --disabled-password --gecos "" labuser && echo 'labuser:labuser' | chpasswd
RUN mkdir -p /home/labuser/CTF/Problem1
RUN mkdir -p /home/labuser/CTF/Problem2
RUN mkdir -p /home/labuser/CTF/Problem3
RUN mkdir -p /home/labuser/CTF/Problem4

RUN rm /bin/cat
RUN rm /bin/head
RUN rm /bin/more


COPY Problem2Script.sh /usr/local/games/Problem2.sh
COPY Problem2Dummy.sh /opt/randomFile3.sh
COPY Problem2Dummy.sh /var/local/randomFile3.sh
COPY Problem2Dummy.sh /usr/local/include/randomFile3.sh
COPY Problem2Dummy.sh /usr/games/randomFile3.sh
COPY Problem2Solve.sh /usr/bin/randomFile3.sh
COPY Problem2Dummy.sh /usr/share/misc/randomFile3.sh
COPY Problem2Dummy.sh /usr/share/samba/randomFile3.sh
COPY Problem2Dummy.sh /etc/default/randomFile3.sh
COPY Problem2Dummy.sh /etc/ssl/randomFile3.sh
COPY wrapper.sh wrapper.sh
COPY login /etc/opt/login

ADD Problem1 /home/labuser/CTF/Problem1
ADD Problem2 /home/labuser/CTF/Problem2
ADD Problem3 /home/labuser/CTF/Problem3
ADD Problem4 /home/labuser/CTF/Problem4

EXPOSE 22

CMD ["/bin/sh", "-c", "./wrapper.sh"]
