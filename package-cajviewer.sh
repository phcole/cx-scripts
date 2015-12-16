#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="cajviewer"
export public_bottle_name="Deepin-CAJViewer"
export public_bottle_uuid="155c084b-ff37-4084-949f-f7b25a0ef3c4"
export desktop_file_categories="reading;"
export deb_package_name="deepinwine-cajviewer"
export deb_version_string="7.2.113.0deepin0"
export deb_description="CNKI CAJViewer on CrossOver Deepin"

sudo -E ./script-packager.sh
