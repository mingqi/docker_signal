from index.alauda.cn/oilbeater/rstudio


RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install supervisor-stdout
ADD . /docker_signal
RUN cat /docker_signal/stop_handler.conf >> /etc/supervisor/conf.d/supervisord.conf
