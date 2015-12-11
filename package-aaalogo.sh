#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="aaalogo"
public_bottle_name="Deepin-AAALogo"
public_bottle_uuid="9e217ae7-b1ef-47db-928a-41473fc68d62"
desktop_file_categories="graphics;"
deb_package_name="deepinwine-aaalogo"
deb_version_string="4.1.1deepin0"
deb_description="AAALogo on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
