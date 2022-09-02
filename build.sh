#!/bin/sh

# Assuming Python3 and pip is already installed and in the current PATH.

# This sample uses PyQt6 to create a GUI application.
pip install PyQt6

# Generate the standalone app.  Here are some details on each of the options:
# --windowed: Create an application bundle rather than a plain executable binary.
# --osx-bundle-identifier: Needed to provide an unique identifier for the bundle (otherwise the identifier will be the same as the app name)
# --target-arch: Needed to specify an universal binary.  By default the binary will only be built for the current architecture.
pyinstaller --windowed --osx-bundle-identifier com.bomgar.PyQtHelloWorld PyQtHelloWorld.py #--target-arch universal2

# Set the bundle version (it's 0.0.0 by default)
plutil -replace CFBundleShortVersionString -string 1.0.0 dist/PyQtHelloWorld.app/Contents/Info.plist
