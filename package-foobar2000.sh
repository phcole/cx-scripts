#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="foobar2000"
public_bottle_name="Deepin-Foobar2000"
public_bottle_uuid="a21767f7-2c7a-4df1-8306-7c35d205b356"
desktop_file_categories="music;"
deb_package_name="deepinwine-foobar2000"
deb_version_string="1.3.9deepin1"
deb_description="Foobar2000 on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
