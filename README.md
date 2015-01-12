# Doubledocker: Docker in Docker

Run [Docker](http://docker.io/) inside Docker

Link: [danggrianto/doubledocker-pi](https://registry.hub.docker.com/u/danggrianto/doubledocker-pi/)


## Permissions
This image needs privileged permissions. Don't forget to use the `--privileged` command line flag.

## Volumes
The AUFS filesystem at `/var/lib/docker` cannot sit ontop of another AUFS filesystem. The directory is therefore exported as a container volume. 

## Ports
The Docker daemon listens on the default socket and on port 2375.

## Example
To run the doubledocker container simply write:
    
    docker run --privileged -P danggrianto/doubledocker-pi


## Use Cases
Running the [Drone CI](http://drone.io/) server inside a [container](https://registry.hub.docker.com/u/mattgruter/drone/).


## Known Issues
Attempting to connect to the docker daemon from the outside fails:

    Get http://localhost:49153/v1.12/containers/json: net/http: transport closed before response was received


