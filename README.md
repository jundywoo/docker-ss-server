# docker-ss-server

## Usage

docker pull kennieng/docker-ss-server

docker run -d --restart unless-stopped -v <port>:<port> --name <name> kennieng/docker-ss-server
  
## Preparation

create local file *sss.json*,  (meaning ShadowsockServerSetting)

{
        "server_port":<port>,
        "password": <password>,
        "timeout":300,
        "method":"aes-256-cfb",
        "fast_open":false,
        "workers":1
}
