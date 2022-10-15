#!/bin/bash

# Terminal settings
TERM_URL=https://raw.githubusercontent.com/liuchengxu/dotfiles/master/alacritty.yml
TERM_CONF=$HOME/.config/alacritty

CONFIG=alacritty.yml

FONT_VER=5.2
zip=Fira_Code_v${version}.zip

FONT_URL=https://github.com/tonsky/FiraCode/releases/download/${version}/${zip}
FONT_DIR=$HOME/.local/share/fonts


if echo "Getting Alacritty terminal with ligatures support"; then
    mkdir -p $TERM_CONF
    cd $TERM_CONF
    curl -fLo "alacritty.yml" $TERM_URL
    nvim -e -sc 'g/^\s*[^#] family: Victor/s/^/#/' -cx $CONFIG
    nvim -e -sc 'g/^\s*[#] family: Fira Code/s/#//' -cx $CONFIG
    nvim -e -sc 'normal! gg=G' -cx $CONFIG
    cd -
fi

if echo "Getting FiraCode Font..."; then
    mkdir -p $FONT_DIR
    cd $FONT_DIR
    curl --fail --location --show-error $FONT_URL --output ${zip}
    unzip -o -q -d ${fonts_dir} ${zip}
    rm ${zip}
    cd -
    echo "Complete"
fi
