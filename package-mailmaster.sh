#!/bin/bash

export origin_bottle_name="mailmaster"
export public_bottle_name="Deepin-MailMaster"
export public_bottle_uuid="69459264-9331-4b8b-825f-98cb3d163588"
export desktop_file_categories="internet;"
export deb_package_name="deepinwine-mailmaster"
export deb_version_string="1.1.1.20deepin1"
export deb_description="NetEase MailMaster on CrossOver Deepin"

./script-packager.sh
