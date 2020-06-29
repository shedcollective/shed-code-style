# PHP
echo -e "${COMMENT}[ Installing PHP linter ]${NC}"
mkdir -p "$HOME/.phpcs"

# Ensure PHPCS is installed and configured
installBin "phpcs" "brew install php-code-sniffer"
createLink "Shed" "$HOME/.phpcs" "$ROOT_DIR/php/Shed"

echo "Configuring phpcs to use Shed ruleset"
phpcs --config-set installed_paths "$HOME/.phpcs" >> /dev/null
phpcs --config-set default_standard Shed >> /dev/null


# Ensure PHPStorm has the correct codestyle configs
DIRS=(
    "$HOME/Library/Preferences/PhpStorm2018.1"
    "$HOME/Library/Preferences/PhpStorm2018.2"
    "$HOME/Library/Preferences/PhpStorm2018.3"
    "$HOME/Library/Preferences/PhpStorm2019.1"
    "$HOME/Library/Preferences/PhpStorm2019.2"
    "$HOME/Library/Preferences/PhpStorm2019.3"
    "$HOME/Library/Application Support/JetBrains/PhpStorm2020.1"
)

for DIR in "${DIRS[@]}"
do
    :
    if [[ -d "${DIR}" ]]; then
        # JetBrains Account config sync
        createLink "Shed.xml" "${DIR}/jba_config/codestyles" "$ROOT_DIR/php/codestyle/Shed.xml"
        # Regular codestyles
        createLink "Shed.xml" "${DIR}/codestyles" "$ROOT_DIR/php/codestyle/Shed.xml"
    fi
done

echo -e ""
