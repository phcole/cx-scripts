#!/bin/bash

export current_home_path="${HOME}"
export origin_bottle_name="foobar2000"
export public_bottle_name="Deepin-Foobar2000"
export public_bottle_uuid="a21767f7-2c7a-4df1-8306-7c35d205b356"
export desktop_file_categories="music;"
export deb_package_name="deepinwine-foobar2000"
export deb_version_string="1.3.9deepin1"
export deb_description="Foobar2000 on CrossOver Deepin"

sudo -E ./script-packager.sh
