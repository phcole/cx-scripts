#!/bin/bash

Base_Dir=$(cd `dirname $0`; pwd)
Staging_Dir="$Base_Dir/staging.dir"
CxOffice_Id="cxoffice"
CxOffice_Base="/opt/cxoffice/bin"

if [ -z "$DEB_PACKAGER" ]; then
	DEB_PACKAGER="Hao Peng <penghao@linuxdeepin.com>"
fi
if [ -z "$DEB_PACKAGE_DATE" ]; then
	DEB_PACKAGE_DATE=`date -R`
fi

Bottle_Source_Path="$HOME/.cxoffice/$BOTTLE_SOURCE_NAME"
Bottle_Public_Path="/opt/cxoffice/support/$BOTTLE_PUBLIC_NAME"
Bottle_Public_Home_Path="$HOME/.cxoffice/$BOTTLE_PUBLIC_NAME"
Bottle_Public_Staging_Path="$Staging_Dir/opt/cxoffice/support/$BOTTLE_PUBLIC_NAME"

check_param()
{
	if [ -z "$1" ]; then
		echo "$3"
		exit 1
	fi
	echo "$2\"$1\""
}

remove_public_bottle()
{
	echo "==> Remove exist public bottle..."
	if [ -d "$Bottle_Public_Path" ]; then
		sudo $CxOffice_Base/cxbottle --bottle="$BOTTLE_PUBLIC_NAME" --removeall --delete --force
	fi
	if [ -d "$Bottle_Public_Path" ]; then
		sudo rm -rf "$Bottle_Public_Path"
	fi
	if [ -d "$Bottle_Public_Home_Path" ]; then
		rm -rf "$Bottle_Public_Home_Path"
	fi
	echo "<== Done."
}

make_public_bottle()
{
	echo "==> Make public bottle..."
	# make sure crossover can produce a desktop file for launcher
	if [ ! -d "/etc/xdg/menus/applications-merged" ]; then
	    sudo mkdir -p "/etc/xdg/menus/applications-merged"
	fi
	sudo $CxOffice_Base/cxbottle --bottle="$BOTTLE_PUBLIC_NAME" --copy="$Bottle_Source_Path" \
		--install --scope=managed --set-uuid="$BOTTLE_PUBLIC_UUID"
	echo "<== Done."
}

build_deb_from_public_bottle()
{
	echo "==> Prepare the staging dir..."
	rm -rf "$Staging_Dir"
	mkdir -p "$Staging_Dir"
	echo "<== Done."

	echo "==> Copy bottle files to staging dir..."
	# copy files in bottle dir
	cp -r --parents "$Bottle_Public_Path" "$Staging_Dir"
	#copy extend files like menus, etc.
	for i in "cxmenu" "cxassoc" "cxnsplugin"; do
		/opt/cxoffice/bin/$i --bottle "$BOTTLE_PUBLIC_NAME" --scope managed --list-files \
			| grep "=" | awk -F'=' '{print $1}' | tr -d '"' \
			| grep -Ev "/(cxoffice|usr)/bin/" | grep -Ev "/menus/(gnome|kde|xfce)" \
			| sort | uniq \
			| xargs -I {} cp --parents {} $Staging_Dir
	done
	echo "<== Done."

	echo "==> Generate debian control files..."
	mkdir "$Staging_Dir/debian"
	cp -r $Base_Dir/debian.template/* $Staging_Dir/debian
	sed -i "s#@package_name@#$DEB_PACKAGE_NAME#" $Staging_Dir/debian/*
	sed -i "s#@release@#$DEB_PACKAGE_VERSION#" $Staging_Dir/debian/*
	sed -i "s#@packager@#$DEB_PACKAGER#" $Staging_Dir/debian/*
	sed -i "s#@date@#$DEB_PACKAGE_DATE#" $Staging_Dir/debian/*
	sed -i "s#@product_id@#$CxOffice_Id#" $Staging_Dir/debian/*
	sed -i "s#@description@#$DEB_PACKAGE_DESCRIPTION#" $Staging_Dir/debian/*
	sed -i "s#@bottle@#$BOTTLE_PUBLIC_NAME#" $Staging_Dir/debian/*
	sed -i "s#@pkg_old_name@#$DEB_PACKAGE_OLD_NAME#" $Staging_Dir/debian/*
	echo "$Staging_Dir/etc/* /etc/" >  $Staging_Dir/debian/install
	echo "$Staging_Dir/opt/* /opt/" >> $Staging_Dir/debian/install
	echo "$Staging_Dir/usr/* /usr/" >> $Staging_Dir/debian/install
	echo "<== Done."

	echo "==> Make speical treatments..."
	sed -ri "s#(\"(Menu|Assoc|NSPlugin)Mode\" = )\"[^ ]*\"#\1\"frozen\"#" "$Bottle_Public_Staging_Path/cxbottle.conf"
	find "$Bottle_Public_Staging_Path/dosdevices" -type l ! -name "z:" -exec rm -v {} \;
	find "$Bottle_Public_Staging_Path/drive_c/users/crossover/" -type l -exec rm -v {} \;
	find "$Staging_Dir/usr/share/icons/hicolor" -type f -execdir mv {} ${DEB_PACKAGE_NAME}.png \;
	find "$Staging_Dir/usr/share/applications/" -type f -execdir sed -ri "s#(Icon=).*#\1${DEB_PACKAGE_NAME}#" {} \;
	find "$Staging_Dir/usr/share/applications/" -type f -execdir sed -ri "s#(Categories=).*#\1${DESKTOP_CATEGORIES}#" {} \;
	echo "<== Done."

	echo "==> Build deb..."
	# call debhelpers to build deb package.
	fakeroot $Staging_Dir/debian/build $Staging_Dir
	echo "<== Done."
	Deb_Name="${DEB_PACKAGE_NAME}_${DEB_PACKAGE_VERSION}_i386.deb"
	if [ -f "$Staging_Dir/$Deb_Name" ]; then
		mv $Staging_Dir/$Deb_Name $Base_Dir
		echo "=== Build deb succeed. deb name: \"$Deb_Name\""
	fi
	rm -rf "$Staging_Dir"
}

if [ ! -d "$Bottle_Source_Path" ]; then
	echo "bottle not exists."
	exit 1
fi

check_param "$BOTTLE_SOURCE_NAME"       "source bottle name:      " "source bottle name not given."
check_param "$BOTTLE_PUBLIC_NAME"       "public bottle name:      " "public bottle name not given."
check_param "$BOTTLE_PUBLIC_UUID"       "public bottle uuid:      " "public bottle uuid not given."
check_param "$DEB_PACKAGE_NAME"         "package name:            " "package name not given."
check_param "$DEB_PACKAGE_VERSION"      "package version:         " "package version not given."
check_param "$DEB_PACKAGE_DESCRIPTION"  "package description:     " "package description not given."
echo "package old name:        \"$DEB_PACKAGE_OLD_NAME\""
check_param "$DESKTOP_CATEGORIES"       "desktop file categories: " "desktop file categories not given."
echo "package maintainer:      \"$DEB_PACKAGER\""
echo "package date:            \"$DEB_PACKAGE_DATE\""

./cxclean.sh "$BOTTLE_SOURCE_NAME"

remove_public_bottle
make_public_bottle
build_deb_from_public_bottle
remove_public_bottle

exit 0
