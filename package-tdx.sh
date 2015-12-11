#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="tdx"
public_bottle_name="Deepin-tdx"
public_bottle_uuid="3f58350c-5cb6-417c-bf70-a4c434a157ec"
desktop_file_categories="others;"
deb_package_name="deepinwine-tdx"
deb_version_string="7.23deepin0"
deb_description="tdx Client on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
