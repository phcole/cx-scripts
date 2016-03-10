#!/bin/bash

export BOTTLE_SOURCE_NAME="mailmaster"
export BOTTLE_PUBLIC_NAME="apps.com.163.mail.dashi.pc"
export BOTTLE_PUBLIC_UUID="69459264-9331-4b8b-825f-98cb3d163588"
export DEB_PACKAGE_NAME="apps.com.163.mail.dashi.pc"
export DEB_PACKAGE_DESCRIPTION="NetEase MailMaster on CrossOver Deepin"
export DEB_PACKAGE_VERSION="1.1.1.20deepin3"
export DEB_PACKAGE_OLD_NAME="deepinwine-mailmaster"
export DESKTOP_CATEGORIES="internet;"
export APP_MAIN_EXE="MailMaster.exe"

./script-packager-v2.sh
