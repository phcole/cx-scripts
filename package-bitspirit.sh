#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="bitspirit"
public_bottle_name="Deepin-BitSpirit"
public_bottle_uuid="905462dd-bb63-4a6c-b7a9-5bee882923e4"
desktop_file_categories="internet;"
deb_package_name="deepinwine-bitspirit"
deb_version_string="3.6.0.550deepin0"
deb_description="BitSpirit on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
