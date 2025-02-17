#!/bin/bash

# Find the most recently downloaded .apk file in the Downloads folder
apk_file=$(ls -t ~/Downloads/*.apk 2>/dev/null | head -n 1)

# Check if an .apk file was found
if [ -z "$apk_file" ]; then
    echo "No .apk file found in the Downloads folder."
    exit 1
fi

# Install the found .apk file using adb, with optional parameters
adb install "$@" "$apk_file"

echo "Installed $apk_file"

adb shell monkey -p com.yourstudio.yourapp -c android.intent.category.LAUNCHER 1
