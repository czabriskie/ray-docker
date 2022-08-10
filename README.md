# README

The project contains a very simple use of ray in a docker image. Since I have an M1 chip, I've been told that docker will try and use my computer architecture (arm64). To build a docker image under a different architecture, you need to specify the platform to be built in. 

To build the docker image under linux/amd64 architecture use the code below.

```angular2html
docker build -t ray_hello_world --platform linux/amd64 .
```

You can then run the image

```angular2html
docker run ray_hello_world
```

The crappy part is, since you don't have the architecture to run this docker image on a M1 chip, this code will always fail on  your local machine. However, if you run the image on a linux machine (or in the cloud with amd/64 architecture). This will run