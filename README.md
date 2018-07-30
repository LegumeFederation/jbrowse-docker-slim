# jbrowse-server-docker (EXPERIMENTAL)

Minimal Docker image containing JBrowse JavaScript components + NGINX HTTP server.

External plugins from the [JBrowse Plugin Registry](https://gmod.github.io/jbrowse-registry/) are not supported.

## Build the Docker image

```
docker build -t jbrowse-docker:1.15.0 .
```

## Run a Docker container

Bind mount a host directory (${HOST_DATA}) containing data for the jbrowse/data directory.
This can be read-only in the container:

```
docker run --name jbrowse --publish 8080:80 -v ${HOST_DATA}:/data:ro --rm jbrowse-docker:1.15.0
```

## Loading data

Perl libraries/scripts for loading track data are excluded from this image.
These can be installed by a local user in their home directory via the JBrowse [Bioconda](http://bioconda.github.io/) package: (`conda install jbrowse`).

In the previous example, track data can then be loaded from the host into ${HOST_DATA}/, with track configuration added to ${HOST_DATA}/tracks.conf.
