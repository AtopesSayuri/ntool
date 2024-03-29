#!/usr/bin/env bash
print_help() {
    echo -e "${RNTOOL} help."
    echo -e "${GREEN}-h,--help${RESET} print this help."
    echo -e "${GREEN}-v,--version${RESET} print then ntool's version that you've installed."
    echo -e "${GREEN}-g,--github${RESET} open ntool's github page."
    echo -e "${GREEN}-u,--update${RESET} update ntool from github."
    echo -e "${YELLOW}-d,--debug${RESET} enable debug mode(set -x).Logs will be redirected to ~/log.txt."
    echo -e "${RED}-s,--strict${RESET} enable ${RED}\"set -e\"${RESET} and it will cause many problems such as uncompress failed."
    echo -e "${RED}--uninstall${RESET} uninstall ntool.${RED}YOUR DATA will be LOST.${RESET}"
    exit 0
}
