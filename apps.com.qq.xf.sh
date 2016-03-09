#!/bin/bash

export BOTTLE_SOURCE_NAME="qqdownload"
export BOTTLE_PUBLIC_NAME="apps.com.qq.xf"
export BOTTLE_PUBLIC_UUID="16d61e42-eb58-478c-8c96-cdaa65cc61b6"
export DEB_PACKAGE_NAME="apps.com.qq.xf"
export DEB_PACKAGE_DESCRIPTION="Tencent QQDownload on CrossOver Deepin"
export DEB_PACKAGE_VERSION="4.8.773.400deepin1"
export DEB_PACKAGE_OLD_NAME="deepinwine-qqdownload"
export DESKTOP_CATEGORIES="internet;"
export APP_MAIN_EXE="QQDownload.exe"

./script-packager-v2.sh
