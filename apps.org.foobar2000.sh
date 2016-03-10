#!/bin/bash

export BOTTLE_SOURCE_NAME="foobar2000"
export BOTTLE_PUBLIC_NAME="apps.org.foobar2000"
export BOTTLE_PUBLIC_UUID="a21767f7-2c7a-4df1-8306-7c35d205b356"
export DEB_PACKAGE_NAME="apps.org.foobar2000"
export DEB_PACKAGE_DESCRIPTION="Foobar2000 on CrossOver Deepin"
export DEB_PACKAGE_VERSION="1.3.9deepin2"
export DEB_PACKAGE_OLD_NAME="deepinwine-foobar2000"
export DESKTOP_CATEGORIES="music;"
export APP_MAIN_EXE="foobar2000.exe"

./script-packager-v2.sh
