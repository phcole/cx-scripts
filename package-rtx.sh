#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="rtx"
public_bottle_name="Deepin-RTX"
public_bottle_uuid="0bc13f75-c806-4eb0-8013-340326ddf067"
desktop_file_categories="chat;"
deb_package_name="deepinwine-rtx"
deb_version_string="8.3.625.1deepin0"
deb_description="Tencent RTX 2013 Client on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
