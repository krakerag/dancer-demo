# dancer-demo

## Environment configuration

NB: These notes are for MacOS - Win10/11 is probably easy, under WSL2 using docker-ce.

- Install homebrew if not already installed
- Reboot machine to be clean
- `brew install docker docker-compose colima`
- `colima start --cpu 4 --memory 8 --disk 150 -t vz`

You can also run the below commands in a Gitpod instance without needing any configuration files.

## App specific functionality

We can use docker compose to get the application up and running in a local environment - just perform `docker compose up -d`

This will build the image, copy the application in and run `perl app.pl` to start the application

You can visit it from your desktop by browsing to: http://127.0.0.1:3000/

## Continual work

Use `docker compose down` to send a halt to docker compose and it will bring down the container gracefully.

Update your code and rebuild your container with `docker compose up -d` as shown above 
