#!/usr/bin/env bash

other_main_tui() {
    MAINCHOICE=$(dialog --output-fd 1 --title "ntool" --menu "下面是一些其他大佬的项目和一些好van的\n:)" 15 70 8 \
        "1" "termux-container_moe-hacker" \
        "2" "xbtooln_myxuebi" \
        "3" "NeoVim-Config_AtopesSayuri" \
        "4" "wireless-adb-tools_AtopesSayuri" \
        "5" "APatchPatchTool_AtopesSayuri" \
        "0" "返回脚本主页")
    case ${MAINCHOICE} in
    1)
        source "${NTOOLLIB}"/other/termux-container.sh
        install_termux-container
        exit 0
        ;;
    2)
        bash -c "$(curl https://raw.githubusercontent.com/myxuebi/xbtooln/master/xbtooln.sh)"
        exit 0
        ;;
    3)
        echo -e "${YELLOW}注意!vim配置将不再更新!仅更新neovim配置!"
        read -r -p "按回车以继续"
        echo -e "${RESET}"
        git clone https://github.com/nya-main/VimConfigBackup ~/vcb-nya
        mkdir -p ~/.config
        cp -rf ~/vcb-nya/nvim ~/.config
        exit 0
        ;;
    4)
        source "${NTOOLLIB}"/basic/adb.sh
        adb_main
        ;;
    5)
        source "${NTOOLLIB}"/other/APatchAutoPatchTool.sh
        installer
        ;;
    0)
        termux_main_tui
        ;;
    esac
}
