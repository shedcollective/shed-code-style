# JS
echo "[Installing JS linter]"
installBin "jshint"  "npm install -g jshint"
createLink ".jshint" "$HOME" "$ROOT_DIR/js/.jshint"
echo ""
