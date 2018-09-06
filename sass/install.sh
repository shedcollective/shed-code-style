# SASS
echo -e "${COMMENT}[ Installing SASS linter ]${NC}"
installBin "sass-lint" "npm install -g sass-lint"
createLink ".sass-lint.yml" "$HOME" "$ROOT_DIR/sass/.sass-lint.yml"
echo -e ""
