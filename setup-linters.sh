echo "Shed Linters"
echo "------------"
echo ""

# --------------------------------------------------------------------------

# Useful variables
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# --------------------------------------------------------------------------

# PHP
echo "[Installing PHP linter]"
# Is PHP Code Sniffer installed?
if ! which phpcs >/dev/null; then
    echo "PHP Code Sniffer not installed, installing..."
    brew install php-code-sniffer
    echo "done!"
fi

# Copy the linter to the right place
NAME="Shed"
LINK="/usr/local/etc/php-code-sniffer/Standards"
TARGET="$ROOT_DIR/php/$NAME";

echo "Creating symlink at $LINK/$NAME -> $TARGET"
if [ -d "$LINK/$NAME" ]; then
    echo "Removing old symlink"
    unlink "$LINK/$NAME";
fi
ln -s "$TARGET" "$LINK"

echo "Setting as default standard"
phpcs --config-set default_standard $NAME
echo ""

# --------------------------------------------------------------------------

# JS
echo "[Installing JS linter]"
# Is JSHint installed?
if ! which jshint >/dev/null; then
    echo "JSHint not installed, installing..."
    npm install -g jshint
    echo "done!"
fi

# Copy the linter into place
# @todo
echo ""


# --------------------------------------------------------------------------

# CSS
echo "[Installing CSS linter]"
# Is CSS Comb installed?
if ! which csscomb >/dev/null; then
    echo "CSSComb not installed, installing..."
    npm install -g csscomb
    echo "done!"
fi

# Copy the linter into place
NAME=".csscomb.json"
LINK="$HOME"
TARGET="$ROOT_DIR/css/$NAME";

echo "Creating symlink at $LINK/$NAME -> $TARGET"

if [ -f "$LINK/$NAME" ]; then
    echo "Removing old symlink"
    unlink "$LINK/$NAME";
fi
ln -s "$TARGET" "$LINK"
echo ""

# --------------------------------------------------------------------------

ROOT_DIR=""