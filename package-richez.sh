#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="richez"
export public_bottle_name="Deepin-RichEz"
export public_bottle_uuid="828c0ec4-4829-4874-a747-a93776a677d7"
export desktop_file_categories="others;"
export deb_package_name="deepinwine-richez"
export deb_version_string="1.10deepin1"
export deb_description="GUOTAI JUNAN SECURITIES RichEz Client on CrossOver Deepin"

sudo -E ./script-packager.sh
