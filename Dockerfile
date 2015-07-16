FROM ubuntu:latest

RUN sed -i 's/archive.ubuntu/mirrors.aliyun/g' /etc/apt/sources.list && \
  mkdir $HOME/.pip && \
  echo '[global]' > $HOME/.pip/pip.conf && \
  echo 'index-url = http://pypi.douban.com/simple/' >> $HOME/.pip/pip.conf && \
  echo 'trusted-host = pypi.douban.com' >> $HOME/.pip/pip.conf
