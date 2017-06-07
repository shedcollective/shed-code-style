# SASS
echo "[Installing SASS linter]"
installBin "sass-lint" "npm install -g sass-lint"
createLink ".sass-lint.yml" "$HOME" "$ROOT_DIR/sass/.sass-lint.yml"
echo ""