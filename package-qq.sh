#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="QQ71"
public_bottle_name="Deepin-QQ"
public_bottle_uuid="b22564a7-404c-4d19-ac25-7b221e7f977b"
desktop_file_categories="chat;"
deb_package_name="deepinwine-qq"
deb_version_string="7.1.14522deepin4"
deb_description="Tencent QQ Client on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
