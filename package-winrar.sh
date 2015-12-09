#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="winrar"
public_bottle_name="Deepin-WinRAR"
public_bottle_uuid="55e1025c-82bc-484f-90c2-0f5c3ba6293f"
desktop_file_categories="system;"
deb_package_name="deepinwine-winrar"
deb_version_string="5.2.1deepin0"
deb_description="WinRAR on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
