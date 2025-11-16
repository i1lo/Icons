#!/usr/bin/env bash

ROOT_DIR="$(dirname "$0")/.."
JSON_DIR="$ROOT_DIR/Json"
OUTPUT="$JSON_DIR/icons.json"

mkdir -p "$JSON_DIR"

GREEN="\033[32m"
CYAN="\033[36m"
YELLOW="\033[33m"
MAGENTA="\033[35m"
RESET="\033[0m"

spinner() {
    local frames=('⠋' '⠙' '⠹' '⠸' '⠼' '⠴' '⠦' '⠧' '⠇' '⠏')
    while true; do
        for f in "${frames[@]}"; do
            printf "\r${MAGENTA}%s${RESET} " "$f"
            sleep 0.08
        done
    done
}

echo -e "${CYAN}Generating icons list at json/icons.json ...${RESET}"

spinner &
SPINNER_PID=$!

echo "{" > "$OUTPUT"
echo '  "static": {' >> "$OUTPUT"

count_static=0
count_anim=0

for category in "$ROOT_DIR/static"/*; do
    if [ -d "$category" ]; then
        cat_name=$(basename "$category")
        echo "    \"$cat_name\": [" >> "$OUTPUT"

        for file in "$category"/*.png; do
            [ -e "$file" ] || continue
            file_name=$(basename "$file")

            echo -e "\r${YELLOW}[static]${RESET} adding ${GREEN}$file_name${RESET}..."
            sleep 0.02

            echo "      \"static/$cat_name/$file_name\"," >> "$OUTPUT"
            ((count_static++))
        done

        sed -i '$ s/,$//' "$OUTPUT"
        echo "    ]," >> "$OUTPUT"
    fi
done

sed -i '$ s/,$//' "$OUTPUT"

echo "  }," >> "$OUTPUT"
echo '  "animated": [' >> "$OUTPUT"

for file in "$ROOT_DIR/animated"/*.gif; do
    [ -e "$file" ] || continue

    file_name=$(basename "$file")
    echo -e "\r${YELLOW}[animated]${RESET} adding ${GREEN}$file_name${RESET}..."
    sleep 0.02

    echo "    \"animated/$file_name\"," >> "$OUTPUT"
    ((count_anim++))
done

sed -i '$ s/,$//' "$OUTPUT"

echo "  ]" >> "$OUTPUT"
echo "}" >> "$OUTPUT"

kill "$SPINNER_PID" >/dev/null 2>&1
printf "\r"

echo -e "${GREEN}✔ File generated successfully!${RESET}"
echo -e "${CYAN}→ static PNG: ${GREEN}$count_static${RESET}"
echo -e "${CYAN}→ animated GIF: ${GREEN}$count_anim${RESET}"
echo -e "${MAGENTA}json/icons.json ready!${RESET}"
