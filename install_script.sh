#!/bin/bash
# Purpose: Software installation script - to save your time.
# 2021-12-05 - i2r_devops

choice () {
    local choice=$1
    if [[ ${opts[choice]} ]] # toggle
    then
        opts[choice]=
    else
        opts[choice]=+
    fi
}

PS3='Please choose the software to install: '
while :
do
    clear
    options=( \
    "Curl ${opts[1]}" \
	"Docker ${opts[2]}" \
	"Docker-Compose ${opts[3]}" \
	"Golang ${opts[4]}" \
	"NodeJS ${opts[5]}" \
	"Git ${opts[6]}" \
	"Jetbrains-Toolbox ${opts[7]}" \
	"Google-Chrome ${opts[8]}" \
	"Telegram ${opts[9]}" \
	"Done")
    select opt in "${options[@]}"
    do
        case $opt in
            "Curl ${opts[1]}")
                ./dist/curl.sh
                break
                ;;
            "Docker ${opts[2]}")
                ./dist/docker.sh
                break
                ;;
            "Docker-Compose ${opts[3]}")
		./dist/docker-compose.sh
                break
                ;;
            "NodeJS ${opts[4]}")
                ./dist/nodejs.sh
                break
                ;;
            "Golang ${opts[5]}")
                ./dist/install_golang.sh
                break
                ;;                
            "Git ${opts[6]}")
                ./dist/git.sh
                break
                ;;
            "Jetbrains-Toolbox ${opts[7]}")
                ./dist/jetbrains-toolbox.sh
                break
                ;;
             "Google-Chrome ${opts[8]}")
                ./dist/google-chrome.sh
                break
                ;;
            "Telegram ${opts[9]}")
                ./dist/telegram-desktop.sh
                break
                ;;
             "Done")
                break 2
                ;;
            *) printf '%s\n' 'invalid option';;
        esac
    done
done

printf '%s\n' 'Software installed:'
for opt in "${!opts[@]}"
do
    if [[ ${opts[opt]} ]]
    then
        printf '%s\n' "Option $opt"
    fi
done
