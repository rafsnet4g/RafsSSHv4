#!/bin/bash
[[ $(screen -list| grep -c 'bot_teste') == '0' ]] && {
    clear
    echo -e "\E[44;1;37m     ATIVACÃO BOT RAFS SSH TESTE     \E[0m"
    echo ""
    echo -ne "\n\033[1;32mINFORME O TOKEN\033[1;37m: "
    read token
    clear
    echo ""
    echo -e "\033[1;32mINICIANDO BOT RAFS TESTE \033[0m\n"
    cd $HOME/BOT
    rm -rf $HOME/BOT/botssh
    wget https://github.com/alfainternet/SSHPLUS/raw/main/Sistema/botssh >/dev/null 2>&1
    chmod 777 botssh
    echo ""
    sleep 1
    screen -dmS bot_teste ./botssh $token > /dev/null 2>&1
    clear
    echo "BOT RAFS ATIVADO"
    menu
} || {
    screen -r -S "bot_teste" -X quit
    clear
    echo "BOT RAFS DESATIVADO"
    menu
}
