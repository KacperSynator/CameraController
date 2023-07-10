# CameraControler


### Build with Docker

```bash
# install docker
curl -sSL https://get.docker.com | sh

# add username to docker group
sudo usermod -aG docker <username>
# logout and login to apply changes

# build docker image
docker build -t camera_controller_image .

# run docker
docker run camera_controller_image
```