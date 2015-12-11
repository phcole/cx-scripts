#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="aliwangwang"
public_bottle_name="Deepin-AliWangWang"
public_bottle_uuid="3802b2bd-8add-4b26-9693-b8f374a0e618"
desktop_file_categories="chat;"
deb_package_name="deepinwine-aliwangwang"
deb_version_string="8.10.24deepin0"
deb_description="AliWangWang Client on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
