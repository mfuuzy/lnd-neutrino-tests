#!/bin/bash

if command -v expect >/dev/null 2>&1; then
    echo "expect is already installed."
else
    echo "expect is not installed, installing..."
    apk add expect
    if [ $? -eq 0 ]; then
        echo "expect installed successfully."
    else
        echo "Failed to install expect."
        exit 1
    fi
fi

chmod +x /scripts/create_account.sh
chmod +x /scripts/unlock.sh

SEED_FILE="/scripts/seed.txt"

if [ -f "$SEED_FILE" ]; then
  echo "File $SEED_FILE exists, skipping execution of create_account.sh."
  /scripts/./unlock.sh > /dev/null
else
    echo "File $SEED_FILE does not exist, running create_account.sh..."
    /scripts/./create_account.sh >> $SEED_FILE
    cat $SEED_FILE
    echo "Output written to SEED_FILE."
fi
exit 0