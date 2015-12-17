#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="aliworkbench"
export public_bottle_name="Deepin-AliWorkbench"
export public_bottle_uuid="11d9bb99-3c5d-44a6-8a5e-38655ccf2d25"
export desktop_file_categories="chat;"
export deb_package_name="deepinwine-aliworkbench"
export deb_version_string="3.06.09deepin1"
export deb_description="AliWorkbench(Qian Niu) Client on CrossOver Deepin"

sudo -E ./script-packager.sh
