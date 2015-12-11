#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="aliworkbench"
public_bottle_name="Deepin-AliWorkbench"
public_bottle_uuid="11d9bb99-3c5d-44a6-8a5e-38655ccf2d25"
desktop_file_categories="chat;"
deb_package_name="deepinwine-aliworkbench"
deb_version_string="8.10.24deepin0"
deb_description="AliWorkbench Client on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
