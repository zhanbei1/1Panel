FROM centos:centos7

# todo: 第一版本，直接安装使用
#RUN mv /usr/bin/systemctl /usr/bin/systemctl.old
#RUN curl https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl.py > /usr/bin/systemctl
#RUN chmod +x /usr/bin/systemctl

RUN mkdir -p /home/1panel/ci
COPY ci/* /home/1panel/ci/

RUN ls -lh /home/1panel/ci
RUN bash -x /home/1panel/ci/quick_start.sh

WORKDIR /home/1panel
#ENTRYPOINT ["systemctl", "start",  "1panel"]

EXPOSE 18888

