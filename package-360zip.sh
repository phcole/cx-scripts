#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="360zip"
export public_bottle_name="Deepin-360Zip"
export public_bottle_uuid="6e6d6385-9e9e-4f8c-a3b5-ccf0e7014bbc"
export desktop_file_categories="system;"
export deb_package_name="deepinwine-360zip"
export deb_version_string="3.2.0.2080deepin0"
export deb_description="360zip on CrossOver Deepin"

sudo -E ./script-packager.sh
