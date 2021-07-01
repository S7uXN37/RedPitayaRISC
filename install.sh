#!/bin/bash

# Compile controller
echo "Compiling controller."
cd risc_v_app
make INSTALL_DIR=/opt/redpitaya

# Distribute code into correct folders
if [ -e "/opt/redpitaya/www/apps/risc_v_app" ]; then
    echo "Found earlier app version. Removing."
    rm -r "/opt/redpitaya/www/apps/risc_v_app"
    # Possibly also remove files from fpga and lib
fi
echo "Copying files."
cp -r risc_v_app /opt/redpitaya/www/apps/risc_v_app
cp fpga/* /opt/redpitaya/www/apps/fpga
cp lib/* /opt/redpitaya/www/apps/lib

echo "Installation complete."
