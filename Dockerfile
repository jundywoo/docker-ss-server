FROM python:3
RUN pip install shadowsocks
CMD [ "python", "/usr/local/bin/ssserver -c /tmp/sss.json --user nobody -d start" ]
 
