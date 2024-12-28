#!/bin/bash

FONT_NAME="JetBrainsMono"
FONT_DIR="$HOME/.local/share/fonts"

# Create fonts directory if it doesn't exist
mkdir -p "$FONT_DIR"

# Download and install the font
install_font() {
    echo "Downloading $FONT_NAME Nerd Font..."
    wget -P /tmp "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${FONT_NAME}.zip"
    
    echo "Installing font..."
    unzip -o "/tmp/${FONT_NAME}.zip" -d "$FONT_DIR"
    
    # Clean up
    rm "/tmp/${FONT_NAME}.zip"
    
    # Refresh font cache
    fc-cache -f
    
    echo "Font installation complete!"
}

# Check if font is already installed
if fc-list | grep -i "$FONT_NAME" > /dev/null; then
    echo "$FONT_NAME is already installed"
else
    install_font
fi