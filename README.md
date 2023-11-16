# dancer-demo

## Environment configuration

NB: These notes are for MacOS - Win10/11 is probably easy, under WSL2 using docker-ce.

- Install homebrew if not already installed
- Reboot machine to be clean
- `brew install docker docker-compose colima`
- `colima start --cpu 4 --memory 8 --disk 150 -t vz`

You can also run the below commands in a Gitpod instance without needing any configuration files.

## App specific functionality

Build the image in Docker first: `docker build -t dancer .`

Once image is built, you can sync the folder in and run it: `docker run -d -p 3000:3000 -v $(pwd):/opt -w /opt dancer`

This will run the docker image and map the internal port 3000 to the port 3000 of the host system. It will also map the /opt directory of the container to the current directory of the host system.

This will launch the Dancer application in the container and you can visit it from your desktop by browsing to: http://127.0.0.1:3000/

## Continual work

Run `docker container ls` and you will see something like this:

```
❯ docker container ls
CONTAINER ID   IMAGE                                            COMMAND                  CREATED         STATUS         PORTS                                                                                    NAMES
c0306495fc74   dancer                                           "perl app.pl"            4 seconds ago   Up 4 seconds   0.0.0.0:3000->3000/tcp, :::3000->3000/tcp                                                laughing_jemison
```

You can now stop your container by running `docker stop c0306495fc74`

Update your code and rebuild your container with the build command, and re-run the container with your run command above.