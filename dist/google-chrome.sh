if ! [ -x "$(command -v google-chrome)" ]; 
    then
        echo "Google-chrome installation started..."
google-chrome --version
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
	sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb && \
	rm  google-chrome-stable_current_amd64.deb*
    else
	echo $(google-chrome --version) "is already installed, at:" $(command -v git)
exit 0 
fi
