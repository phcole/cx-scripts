#!/bin/bash

export BOTTLE_SOURCE_NAME="hrtx"
export BOTTLE_PUBLIC_NAME="apps.com.qq.b.eim"
export BOTTLE_PUBLIC_UUID="a15352de-0a83-4332-9a17-13efc97e7740"
export DEB_PACKAGE_NAME="apps.com.qq.b.eim"
export DEB_PACKAGE_DESCRIPTION="Tencent QQEIM Client on CrossOver Deepin"
export DEB_PACKAGE_VERSION="1.90.2220deepin1"
export DEB_PACKAGE_OLD_NAME="deepinwine-hrtx"
export DESKTOP_CATEGORIES="chat;"
export APP_MAIN_EXE="QQEIM.exe"

./script-packager-v2.sh
