# PHP
echo "[Installing PHP linter]"
mkdir -p "$HOME/.phpcs"
installBin "phpcs" "brew install php-code-sniffer"
createLink "Shed" "$HOME/.phpcs" "$ROOT_DIR/php/Shed"

echo "Adding path to standard"
phpcs --config-set installed_paths "$HOME/.phpcs"

echo "Setting as default standard"
phpcs --config-set default_standard $NAME
echo ""