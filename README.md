# squad-server
Squad Dedicated Server Docker Image

Build to create a containerized version of Squad Dedicated Server
https://store.steampowered.com/app/393380/Squad/

Build by hand
```
git clone https://github.com/antimodes201/squad-server.git
docker build -t antimodes201/squad-server:latest .
``` 

Docker Pull
```
docker pull antimodes201/squad-server
```

Docker Run with defaults 
change the volume options to a directory on your node and maybe use a different name then the one in the example

```
docker run -it -p 42433-42434:42433-42434/udp -v /app/docker/sandstorm:/sandstorm \
    -e INSTANCE_NAME="T3stN3t A Fancy Sandstorm Server in a Docker Container" \
    --name sandstorm \
    antimodes201/squad-server:latest
```
 
Currently exposed environmental variables and their default values
- INSTANCE_NAME default
- GAME_PORT_1 7787
- GAME_PORT_2 7788
- QUERY_PORT_1 27165
- QUERY_PORT_2 27166 
- RCON_PORT 21114
- ENV TZ America/New_York