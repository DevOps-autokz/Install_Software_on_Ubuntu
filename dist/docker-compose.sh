if ! [ -x "$(command -v docker-compose)" ];
    then
	sudo curl -L "https://github.com/docker/compose/releases/download/2.14.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
    else
	echo "$(docker-compose -v) is already installed, at: $(command -v docker-compose)"
  exit 0
fi
