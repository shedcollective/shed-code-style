# JS
echo "[Installing JS linter]"
installBin "eslint"  "npm install -g eslint eslint-plugin-vue"
installBin "eslint-plugin-vue"  "npm install -g eslint-plugin-vue"
createLink ".eslintrc" "$HOME" "$ROOT_DIR/js/.eslintrc"
echo ""
