#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="wps"
public_bottle_name="Deepin-WPS-Pro"
public_bottle_uuid="dbc69aa1-3c40-4695-a0de-f81963e34547"
desktop_file_categories="office;"
deb_package_name="deepinwine-wps-pro"
deb_version_string="9.1.0.4167deepin0"
deb_description="Kingsoft WPS Professional on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
