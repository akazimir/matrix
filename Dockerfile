FROM scratch
LABEL maintainer="akazimir <a.kazimirova-kolesarova@t-systems.com>"
LABEL version="1"
LABEL description="vlastný image s názvom matrix + nainstalovany alpine-minirootfs"

ADD alpine-minirootfs-3.12.0-x86_64.tar.gz /
#ADD http://dl-cdn.alpinelinux.org/alpine/v3.12/releases/x86_64/alpine-minirootfs-3.12.0-x86_64.tar.gz /
RUN apk add cmatrix  
#WORKDIR /cmatrix
#RUN autoreconf -i
#RUN ./configure
#RUN make
#RUN make install
CMD ["cmatrix"]



