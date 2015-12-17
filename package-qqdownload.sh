#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="qqdownload"
export public_bottle_name="Deepin-QQDownload"
export public_bottle_uuid="16d61e42-eb58-478c-8c96-cdaa65cc61b6"
export desktop_file_categories="internet;"
export deb_package_name="deepinwine-qqdownload"
export deb_version_string="4.8.773.400deepin3"
export deb_description="Tencent QQDownload on CrossOver Deepin"

sudo -E ./script-packager.sh
