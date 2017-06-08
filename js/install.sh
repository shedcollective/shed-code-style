# JS
echo "[Installing JS linter]"
installBin "jshint"  "npm install -g jshint"
createLink ".jshintrc" "$HOME" "$ROOT_DIR/js/.jshintrc"
echo ""
