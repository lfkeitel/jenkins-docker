# Jenkins Docker

This Docker image contains the latest LTS version of Jenkins running on Alpine. The only change is installing the Docker
client from Alpine's repositories.

# Running

```bash
docker run -d \
    -p 8080:8080 \
    -v jenkins_home:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --name jenkins \
    --group-add $(stat -c %g /var/run/docker.sock) \
    lfkeitel/jenkins-docker:lts-alpine
```

The above command will expose Jenkins on port 8080 using a named volume to persist Jenkins data. The docker sock
is mapped into the container and the group ID for the socket is added to the container's `jenkins` user.
