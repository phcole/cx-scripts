#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="360zip"
public_bottle_name="Deepin-360Zip"
public_bottle_uuid="6e6d6385-9e9e-4f8c-a3b5-ccf0e7014bbc"
desktop_file_categories="system;"
deb_package_name="deepinwine-360zip"
deb_version_string="3.2.0.2080deepin0"
deb_description="360zip on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
