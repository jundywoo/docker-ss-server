FROM python:2.7.14-alpine3.7
RUN pip install shadowsocks
CMD [ "/usr/local/bin/ssserver", "-c", "/tmp/sss.json", "--user", "nobody", "start" ]
 
