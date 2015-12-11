#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="richez"
public_bottle_name="Deepin-RichEz"
public_bottle_uuid="828c0ec4-4829-4874-a747-a93776a677d7"
desktop_file_categories="others;"
deb_package_name="deepinwine-richez"
deb_version_string="1.10deepin0"
deb_description="GUOTAI JUNAN SECURITIES RichEz Client on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
