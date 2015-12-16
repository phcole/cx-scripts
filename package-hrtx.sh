#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="hrtx"
export public_bottle_name="Deepin-HRTX"
export public_bottle_uuid="a15352de-0a83-4332-9a17-13efc97e7740"
export desktop_file_categories="chat;"
export deb_package_name="deepinwine-hrtx"
export deb_version_string="1.89.2052deepin4"
export deb_description="Tencent EIMQQ Client on CrossOver Deepin"

sudo -E ./script-packager.sh
