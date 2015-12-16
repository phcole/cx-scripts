#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="tdx"
export public_bottle_name="Deepin-tdx"
export public_bottle_uuid="3f58350c-5cb6-417c-bf70-a4c434a157ec"
export desktop_file_categories="others;"
export deb_package_name="deepinwine-tdx"
export deb_version_string="7.23deepin1"
export deb_description="TONGDAXIN tdx Client on CrossOver Deepin"

sudo -E ./script-packager.sh
