echo "Shed Linters"
echo "------------"
echo ""

# --------------------------------------------------------------------------

# Useful variables
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Useful functions
installBin ()
{
    BIN="$1"
    INSTALL_COMMAND="$2"
    if ! which $BIN >/dev/null; then
        echo "$BIN not installed, installing..."
        eval $INSTALL_COMMAND
        echo "done!"
    else
        echo "$BIN is already installed"
    fi
}

createLink ()
{
    NAME="$1"
    LINK="$2"
    TARGET="$3";

    echo "Creating symlink at $LINK/$NAME -> $TARGET"

    if [ -f "$LINK/$NAME" ] || [ -d "$LINK/$NAME" ]; then
        echo "Removing old symlink"
        unlink "$LINK/$NAME";
    fi
    ln -s "$TARGET" "$LINK"
}

# --------------------------------------------------------------------------

source "php/install.sh"
source "js/install.sh"
source "sass/install.sh"

# --------------------------------------------------------------------------

# Reset variables
ROOT_DIR=""
