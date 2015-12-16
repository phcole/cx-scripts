#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="foxitreader-cn"
export public_bottle_name="Deepin-FoxitReader-cn"
export public_bottle_uuid="7d13ba4a-edfa-467b-848a-b3bc352d41b0"
export desktop_file_categories="reading;"
export deb_package_name="deepinwine-foxitreader-cn"
export deb_version_string="7.24.1012deepin1"
export deb_description="Foxit PDF Reader(zh-cn) on CrossOver Deepin"

sudo -E ./script-packager.sh
