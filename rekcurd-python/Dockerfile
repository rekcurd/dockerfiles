FROM centos:7

RUN set -x && \
    yum -y update && yum clean all
ENV LANG en_US.UTF-8

RUN set -x && \
    yum install -y make git gcc zlib-devel bzip2-devel openssl-devel readline-devel sqlite-devel && \
    git clone https://github.com/tagomoris/xbuild.git /usr/local/src/xbuild && \
    /usr/local/src/xbuild/python-install 3.6.5 /usr/local/src/python
ENV PATH /usr/local/src/python/bin:$PATH
RUN pip install --upgrade pip

# Entrypoint
COPY entrypoint.sh /usr/local/src/entrypoint.sh
ENTRYPOINT ["/usr/local/src/entrypoint.sh"]

EXPOSE 5000
EXPOSE 18080
