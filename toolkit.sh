
#!/bin/bash

# ===== COLORS =====
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"

while true
do
    clear

    # ===== HEADER =====
    echo -e "${BLUE}=====================================${RESET}"
    echo -e "${GREEN}     🚀 API TOOLKIT DASHBOARD        ${RESET}"
    echo -e "${BLUE}=====================================${RESET}"
    echo ""

    echo -e "${YELLOW}Select an option:${RESET}"
    echo "1️⃣  Get Random Joke"
    echo "2️⃣  Get Motivational Quote"
    echo "3️⃣  Exit"
    echo ""

    read -p "👉 Enter choice: " choice
    echo ""

    # ===== OPTIONS =====
    if [ "$choice" -eq 1 ]; then
        echo -e "${GREEN}Fetching joke... 😂${RESET}"
        echo ""
        curl -s https://official-joke-api.appspot.com/random_joke \
        | jq -r '"🤣 \(.setup)\n👉 \(.punchline)"'
        echo ""

    elif [ "$choice" -eq 2 ]; then
        echo -e "${GREEN}Fetching quote... 💡${RESET}"
        echo ""
        curl -s https://api.quotable.io/random \
        | jq -r '"💬 \(.content)\n— \(.author)"'
        echo ""

    elif [ "$choice" -eq 3 ]; then
        echo -e "${RED}Goodbye 👋 Thanks for using API Toolkit${RESET}"
        break

    else
        echo -e "${RED}Invalid option. Try again.${RESET}"
    fi

    echo ""
    read -p "Press ENTER to continue..."
done
