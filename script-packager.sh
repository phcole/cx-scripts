#!/bin/bash

BOTTLE_MANAGER=/opt/cxoffice/bin/cxbottle

remove_public_bottle()
{
    if [ -d "/opt/cxoffice/support/$public_bottle_name/" ]; then
        echo "==>Remove existing public bottle..."
        $BOTTLE_MANAGER --bottle="$public_bottle_name" --removeall --delete --force
        echo "<==Done."
    fi

    if [ -d "$current_home_path/.cxoffice/$public_bottle_name/" ]; then
        echo "==>Remove existing stub bottle..."
        rm -rf "$current_home_path/.cxoffice/$public_bottle_name"
        echo "<==Done."
    fi
}

make_public_bottle()
{
    echo "==>Make Public Bottle..."
    $BOTTLE_MANAGER --bottle="$public_bottle_name" --copy="$current_home_path/.cxoffice/$origin_bottle_name" --install --scope=managed --set-uuid="$public_bottle_uuid"
    echo "<==Done."
}

make_deb_from_bottle()
{
    echo "==>Start Packaging..."
    $BOTTLE_MANAGER --bottle="$public_bottle_name" --scope managed --deb --description="$deb_description" --release="$deb_version_string" --packager="Deepin"  --hardcode --pkgname="$deb_package_name"
    echo "<==Done."
}

correct_desktop_file_categories()
{
    echo "==>Correct desktop file categories..."
    find /usr/local/share/applications/ -iname "cxmenu-cxoffice-$public_bottle_uuid-*.desktop" -exec sed -i "s#Categories=.*#Categories=$desktop_file_categories#" {} \;
    echo "<==Done."
}

remove_symlinks()
{
    echo "==>remove symlinks..."
    rm -fv "/opt/cxoffice/bin/nodetool"
    rm -fv "/opt/cxoffice/bin/tdxw"
    echo "<==Done."
}

#================main start================
if [ -z "$current_home_path" ] \
        || [ -z "$origin_bottle_name" ] \
        || [ -z "$public_bottle_name" ] \
        || [ -z "$public_bottle_uuid" ] \
        || [ -z "$desktop_file_categories" ] \
        || [  -z "$deb_package_name" ] \
        || [  -z "$deb_version_string" ] \
        || [  -z "$deb_description" ]; then
	echo "usage: not enough params"
	exit 1
fi

if [ $UID -ne 0 ]; then # we need su rights
	echo "Superuser privileges are required to run this script."
	exit 1
fi

if [ ! -d "$current_home_path/.cxoffice/$origin_bottle_name" ]; then # detect the prefix exist
    echo "prefix do not exists"
    exit 1
fi

echo -e "current home path:\t\t$current_home_path"
echo -e "source bottle:\t\t\t$origin_bottle_name"
echo -e "public bottle name:\t\t$public_bottle_name"
echo -e "public bottle uuid:\t\t$public_bottle_uuid"
echo -e "desktop file categories:\t$desktop_file_categories"
echo -e "deb package name:\t\t$deb_package_name"
echo -e "deb package description:\t$deb_description"
echo -e "deb package version:\t\t$deb_version_string"

remove_public_bottle
make_public_bottle
correct_desktop_file_categories
remove_symlinks
make_deb_from_bottle
remove_public_bottle

exit 0
