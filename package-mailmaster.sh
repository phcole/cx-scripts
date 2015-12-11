#!/bin/bash

current_home_path="${HOME}"
origin_bottle_name="mailmaster"
public_bottle_name="Deepin-MailMaster"
public_bottle_uuid="69459264-9331-4b8b-825f-98cb3d163588"
desktop_file_categories="internet;"
deb_package_name="deepinwine-mailmaster"
deb_version_string="1.1.1.20deepin0"
deb_description="NetEase MailMaster on CrossOver Deepin"

sudo ./script-packager.sh "$current_home_path" "$origin_bottle_name" "$public_bottle_name" "$public_bottle_uuid" "$desktop_file_categories" "$deb_package_name" "$deb_version_string" "$deb_description"
