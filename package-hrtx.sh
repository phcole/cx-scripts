#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="hrtx"
public_bottle_name="Deepin-HRTX"
public_bottle_uuid="a15352de-0a83-4332-9a17-13efc97e7740"
desktop_file_categories="chat;"
deb_package_name="deepinwine-hrtx"
deb_version_string="1.89.2052deepin4"
deb_description="Tencent EIMQQ Client on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
