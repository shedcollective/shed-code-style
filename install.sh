#!/usr/bin/env bash

# Useful variables
ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TITLE='\033[0;32m'
COMMENT='\033[0;33m'
BOLD_COMMENT='\033[1m'
ERROR='\033[31m'
NC='\033[0m'

# Useful functions
installBin ()
{
    BIN="$1"
    INSTALL_COMMAND="$2"
    if ! which $BIN >/dev/null; then
        echo -e "$BIN not installed, installing..."
        eval $INSTALL_COMMAND
        echo -e "done!"
    else
        echo -e "$BIN is already installed"
    fi
}

createLink ()
{
    NAME="$1"
    LINK="$2"
    TARGET="$3";

    echo -e "Creating symlink at ${COMMENT}$LINK/$NAME -> $TARGET${NC}"

    if [ -f "$LINK/$NAME" ] || [ -d "$LINK/$NAME" ]; then
        echo -e "Removing old symlink"
        unlink "$LINK/$NAME";
    fi
    ln -s "$TARGET" "$LINK"
}

# --------------------------------------------------------------------------

echo -e "${TITLE}Shed Linters${NC}"
echo -e "${TITLE}------------${NC}"
echo -e ""

# --------------------------------------------------------------------------
source "php/install.sh"
source "js/install.sh"
source "sass/install.sh"

# --------------------------------------------------------------------------

# Reset variables
ROOT_DIR=''
TITLE=''
COMMENT=''
BOLD_COMMENT=''
ERROR=''
NC=''

