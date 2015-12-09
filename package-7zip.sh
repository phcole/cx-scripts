#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="7zip"
public_bottle_name="Deepin-7Zip"
public_bottle_uuid="145f593d-2958-46da-a49a-8d2ec47a9997"
desktop_file_categories="system;"
deb_package_name="deepinwine-7zip"
deb_version_string="15.12deepin0"
deb_description="7-zip on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
