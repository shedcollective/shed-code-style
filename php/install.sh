# PHP
echo -e "${COMMENT}[ Installing PHP linter ]${NC}"
mkdir -p "$HOME/.phpcs"
installBin "phpcs" "brew install php-code-sniffer"
createLink "Shed" "$HOME/.phpcs" "$ROOT_DIR/php/Shed"
createLink "Default.xml" "$HOME/Library/Preferences/PhpStorm2018.2/codestyles" "$ROOT_DIR/php/codestyle/Default.xml"
phpcs --config-set installed_paths "$HOME/.phpcs"
phpcs --config-set default_standard $NAME
echo -e ""
