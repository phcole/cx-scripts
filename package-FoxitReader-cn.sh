#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="foxitreader-cn"
public_bottle_name="Deepin-FoxitReader-cn"
public_bottle_uuid="7d13ba4a-edfa-467b-848a-b3bc352d41b0"
desktop_file_categories="reading;"
deb_package_name="deepinwine-foxitreader-cn"
deb_version_string="7.24.1012deepin1"
deb_description="Foxit PDF Reader(zh-cn) on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
