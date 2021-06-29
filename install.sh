#!/bin/bash

# Create symlinks from /opt to this repository
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
if [-e "/opt/redpitaya/www/apps/risc_v_app"]; then
    echo "Symlinks already exist. Skipping."
else
    echo "Creating symlinks."
    ln -s "$SCRIPT_DIR/risc_v_app" "/opt/redpitaya/www/apps/risc_v_app"
    ln -s "$SCRIPT_DIR/fpga/*" "/opt/redpitaya/www/apps/fpga"
    ln -s "$SCRIPT_DIR/lib/*" "/opt/redpitaya/www/apps/lib"
fi


# Compile controller
echo "Compiling controller."
cd risc_v_app
make INSTALL_DIR=/opt/redpitaya

echo "Installation complete."