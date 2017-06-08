# JS
echo "[Installing JS linter]"
installBin "eslint"  "npm install -g eslint"
createLink ".eslintrc" "$HOME" "$ROOT_DIR/js/.eslintrc"
echo ""
