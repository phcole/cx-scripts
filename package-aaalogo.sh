#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="aaalogo"
export public_bottle_name="Deepin-AAALogo"
export public_bottle_uuid="9e217ae7-b1ef-47db-928a-41473fc68d62"
export desktop_file_categories="graphics;"
export deb_package_name="deepinwine-aaalogo"
export deb_version_string="4.1.1deepin1"
export deb_description="AAALogo on CrossOver Deepin"

sudo -E ./script-packager.sh
