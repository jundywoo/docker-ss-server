# docker-ss-server

## Usage

docker pull kennieng/docker-ss-server

docker run -d --restart unless-stopped -p &lt;port&gt;:&lt;port&gt; -v &lt;sss.json&gt;:/tmp/sss.json  --name &lt;name&gt; kennieng/docker-ss-server
  
## Preparation

create local file *sss.json*,  (meaning ShadowsockServerSetting)

``` json
{
        "server_port":<port>,
        "password": <password>,
        "timeout":300,
        "method":"aes-256-cfb",
        "fast_open":false,
        "workers":1
}
```

## Docker installation

    1  sudo apt-get remove docker docker-engine docker.io
    2  sudo apt-get update
    3  sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
    4  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    5  sudo apt-key fingerprint 0EBFCD88
    6  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
    7  sudo apt-get update
    8  sudo apt-get install docker-ce
