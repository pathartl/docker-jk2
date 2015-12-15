FROM ubuntu
MAINTAINER Pat Hartl

# Add compatibility for x86 binaries
RUN dpkg --add-architecture i386

RUN apt-get update
RUN apt-get -y install libc6:i386 libstdc++6:i386

ADD jk2-server/libcxa.so.1 /usr/lib/libcxa.so.1
RUN chmod a+x /usr/lib/libcxa.so.1

WORKDIR /root

EXPOSE 28060-28081/udp

ENTRYPOINT ["/root/jk2ded"]

CMD ["+set", "vm_game 0", "+exec", "server.cfg", "+set", "net_ip 0.0.0.0"]
