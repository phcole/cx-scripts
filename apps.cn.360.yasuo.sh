#!/bin/bash

export BOTTLE_SOURCE_NAME="360zip"
export BOTTLE_PUBLIC_NAME="apps.cn.360.yasuo"
export BOTTLE_PUBLIC_UUID="6e6d6385-9e9e-4f8c-a3b5-ccf0e7014bbc"
export DEB_PACKAGE_NAME="apps.cn.360.yasuo"
export DEB_PACKAGE_DESCRIPTION="360zip on CrossOver Deepin"
export DEB_PACKAGE_VERSION="3.2.0.2100deepin2"
export DEB_PACKAGE_OLD_NAME="deepinwine-360zip"
export DESKTOP_CATEGORIES="system;"
export APP_MAIN_EXE="360zip.exe"

./script-packager-v2.sh
