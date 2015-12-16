#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="cjsc"
public_bottle_name="Deepin-cjsc"
public_bottle_uuid="b0bf88ae-4524-4d1f-b7d1-60629e3e1419"
desktop_file_categories="others;"
deb_package_name="deepinwine-cjsc"
deb_version_string="1.0.3deepin1"
deb_description="CHANGJIANG SECURITIES Client on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
