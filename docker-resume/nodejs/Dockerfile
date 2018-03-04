# Author: weineel

FROM node:8.9.3

MAINTAINER weineel lijufeng@ytdinfo.com

COPY ./etc/apt.sources.list /etc/apt/sources.list

ENV NODE_ENV=development

ENV TZ Asia/Shanghai

WORKDIR /var/code

# 需要添加sass的源
RUN echo 'alias npm="npm --registry=https://registry.npm.taobao.org \
    --sass_binary_site=https://npm.taobao.org/mirrors/node-sass/ \
    --cache=$HOME/.npm/.cache/cnpm \
    --disturl=https://npm.taobao.org/dist \
    --userconfig=$HOME/.cnpmrc"' >> ~/.bashrc

COPY ./start.sh /root/start.sh

VOLUME /var/code

EXPOSE 8080 1337 8888 80

CMD ["/bin/bash", "/root/start.sh"]
# ENTRYPOINT ["/bin/bash -c"]
