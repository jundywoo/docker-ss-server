# docker-ss-server

## Usage

docker pull kennieng/docker-ss-server

docker run -d --restart unless-stopped -p &lt;port&gt;:&lt;port&gt; -v &lt;sss.json&rt;:/tmp/sss.json  --name &lt;name&gt; kennieng/docker-ss-server
  
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
