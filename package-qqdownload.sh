#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="qqdownload"
public_bottle_name="Deepin-QQDownload"
public_bottle_uuid="16d61e42-eb58-478c-8c96-cdaa65cc61b6"
desktop_file_categories="internet;"
deb_package_name="deepinwine-qqdownload"
deb_version_string="4.8.773.400deepin2"
deb_description="Tencent QQDownload on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
