#!/bin/bash

# Colors
GREEN="\e[32m"
CYAN="\e[36m"
RED="\e[31m"
YELLOW="\e[33m"
BOLD="\e[1m"
RESET="\e[0m"


# Clear terminal
clear

# Function to show ASCII logo with animation
logo() {
    echo -e "${GREEN}"
    echo "==========================================================="
    echo "  ___  __ ____   ____   ____   _____  "
    echo "  \\  \\/ // __ \ /    \\ /  _ \\ /     \\ "
    echo "   \\   /\\  ___/|   |  \\(  <_> )  Y Y  \\\\"
    echo "    \\_/  \\___  >___|  /\\____/|__|_|  /"
    echo "             \\/     \\/             \\/ "
    echo "==========================================================="
    echo "            Bomber Collection by Rantu                     "
    echo -e "${RESET}"
}

# Function to show developer credits
credits() {
    echo -e "${CYAN}------------------------------------------------------------------${RESET}"
    echo -e "          ${YELLOW}Developed by:${RESET} ${GREEN}Quadra_v69${RESET}"
    echo -e "          ${YELLOW}Instagram:${RESET}  ${CYAN}instagram.com/reflame.x${RESET}"
    echo -e "          ${YELLOW}GitHub:${RESET}     ${CYAN}github.com/quadra-v69${RESET}"
    echo -e "          ${YELLOW}X \\(Twitter\\):${RESET} ${CYAN}x.com/quadra_v69${RESET}"
    echo -e "          ${YELLOW}LinkedIn:${RESET}   ${CYAN}linkedin.com/in/rantu-dev${RESET}"
    echo -e "${CYAN}------------------------------------------------------------------${RESET}"
    echo ""
}

# Main menu function
menu() {
    echo -e "${BOLD}${GREEN}Choose an option:${RESET}"
    echo -e "${CYAN}[1]${RESET} Call"
    echo -e "${CYAN}[2]${RESET} SMS"
    echo -e "${CYAN}[3]${RESET} UPI"
    echo -e "${CYAN}[4]${RESET} Exit"
    echo ""
}



# Main loop
while true; do
    clear
    logo
    credits
    menu

    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            echo -e "${YELLOW}Starting Call bomb...${RESET}"
            sleep 1
            python3 vex.py
            ;;
        2)
            echo -e "${YELLOW}Starting SMS bomb...${RESET}"
            sleep 1
            python3 enc-amity.py
            ;;
        3)
            echo -e "${YELLOW}Starting UPI bomb...${RESET}"
            sleep 1
            python3 encv5.py
            ;;
        4)
            echo -e "${RED}Exiting... Goodbye, Hacker!${RESET}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid choice! Please try again.${RESET}"
            sleep 1.5
            ;;
    esac
done
