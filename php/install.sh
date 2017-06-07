# PHP
echo "[Installing PHP linter]"
installBin "phpcs" "brew install php-code-sniffer"
createLink "Shed" "/usr/local/etc/php-code-sniffer/Standards" "$ROOT_DIR/php/Shed"

echo "Setting as default standard"
phpcs --config-set default_standard $NAME
echo ""