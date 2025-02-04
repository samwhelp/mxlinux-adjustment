#!/usr/bin/env bash

set -e


################################################################################
### Head: retext
##

retext_config_install () {

	echo
	echo "##"
	echo "## Config: retext"
	echo "##"
	echo


	retext_config_install_by_dir

	#retext_config_install_by_each_file


	echo

}

retext_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

retext_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/retext"
	mkdir -p "${HOME}/.config/retext"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/retext/retext.conf ${HOME}/.config/retext/retext.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/retext/retext.conf" "${HOME}/.config/retext/retext.conf"


}

##
### Tail: retext
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	retext_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
