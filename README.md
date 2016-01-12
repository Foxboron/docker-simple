Docker-Simple
============


Simpler host management  

Install:
`source docker-simple.sh`

Config dir: `~/.docker/machine/machines/<host>`  
Config files stores the relevant env variables  

```
λ fox@hackbook example » pwd
/home/fox/.docker/machine/machines/example
λ fox@hackbook example » ls
ca.pem  cert.pem  config  key.pem
λ fox@hackbook example » cat config 
export DOCKER_CERT_PATH=~/.docker/machine/machines/example/
export DOCKER_HOST=tcp://docker.example.org:2375 
export DOCKER_TLS_VERIFY=1
```



Todo: 
local conf: `.../service/.docker-host` 
auto-remember docker-compose hosts  
`alias docker-compose="ds dc"`  
create   
Needs a better name   
  
  
```
ds list
ds activate <host>
ds deactivate
ds run <cmd>
ds create
ds current
```

[![asciicast](https://asciinema.org/a/dbyyk9ixjrjbmuzxc30it1p2c.png)](https://asciinema.org/a/dbyyk9ixjrjbmuzxc30it1p2c)






