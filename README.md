### Jedi Knight II: Jedi Outcast Docker Container

This repository is a Docker image configuration aimed at hosting a Jedi Knight II: Jedi Outcast dedicated server (jk2mv v1.2.1) as a container. It couldn't be any simpler.

#### Method

The Docker file is pretty simple. It exposes the necessary ports to run the server and installs some dependencies. This repository contains the Linux binaries for the server and the native shared library needed to host the fastest server possible.

#### Launching

Before you do anything, make sure to copy your .pk3 files from your legit Jedi Outcast base folder and paste them into the `jk2-server/base` folder contained in this repo.

##### Docker Compose

I've created a `docker-compose.yml` file for easy starting of the container. Build the image using `docker build -t docker-jk2 .` and then do a `docker-compose up` and it should start the server for you.

##### Manual Launch

If you need to pass other launch parameters or you don't use docker-compose you can launch the container the old fashioned way.

```docker run -d -v /path/to/docker-jk2/jk2-server/:/root/ docker-jk2```

If you're running multiple instances on the same box you can remap the ports by using parameters:

```docker run -d -v /path/to/docker-jk2/jk2-server/:/root/ docker-jk2 +set net_port 28060```

#### Version changing

You can specify the version of JK2 used on the server by editing the server.cfg file and changing the line "seta mv_serverversion" to 1.02, 1.03 or 1.04. Be aware that your clients must be on the same version.

#### Customizing

Included in this repository is a server.cfg file in the `base` folder. You can use this to customize server settings. There's tons of resources explaining what each options does, so go wild!

A lot more options are available for JK2MV, just checkout [their documentation.](https://github.com/mvdevs/jk2mv/wiki/Server-hosting)

#### Thanks

* Docker
* Raven Software
* LucasArts
* InAnimaTe for making an awesome [Quake 3 docker container](https://github.com/InAnimaTe/docker-quake3)
* JK2MV [a dedicated server for JK2](https://jk2mv.org/)