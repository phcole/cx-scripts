#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="cjsc"
export public_bottle_name="Deepin-cjsc"
export public_bottle_uuid="b0bf88ae-4524-4d1f-b7d1-60629e3e1419"
export desktop_file_categories="others;"
export deb_package_name="deepinwine-cjsc"
export deb_version_string="1.0.3deepin1"
export deb_description="CHANGJIANG SECURITIES Client on CrossOver Deepin"

sudo -E ./script-packager.sh
