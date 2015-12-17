#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="bitspirit"
export public_bottle_name="Deepin-BitSpirit"
export public_bottle_uuid="905462dd-bb63-4a6c-b7a9-5bee882923e4"
export desktop_file_categories="internet;"
export deb_package_name="deepinwine-bitspirit"
export deb_version_string="3.6.0.550deepin1"
export deb_description="BitSpirit on CrossOver Deepin"

sudo -E ./script-packager.sh
