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

Once image is built, you can sync the folder in and run it: `docker run --rm -it -p 3001:3000 -v $(pwd):/opt -w /opt dancer`

This will run the docker image and map the internal port 3000 to the port 3001 of the host system. It will also map the /opt directory of the container to the current directory of the host system.

It will show you a prompt like this: `root@6e055fa48a34:/opt#`

You're ready to bootstrap the app with: `perl app.pl`

This will launch the Dancer application in the container and you can visit it from your desktop by browsing to: http://127.0.0.1:3001/

## Continual work

Use `ctrl-c` to stop serving content and `exit` to stop the container

You can re-run the `docker run` command from above to resync the local folder and prepare to relaunch the app