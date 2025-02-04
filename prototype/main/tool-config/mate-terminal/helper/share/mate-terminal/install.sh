#!/usr/bin/env bash

set -e


################################################################################
### Head: package_install
##

mate_terminal_package_install () {

	echo

	echo "################################################################################"
	echo "### Head: mate_terminal_package_install"
	echo "##"
	echo

	sudo apt-get install mate-terminal

	echo
	echo "##"
	echo "### Tail: mate_terminal_package_install"
	echo "################################################################################"
	echo

}

##
### Tail: package_install
################################################################################


################################################################################
### Head: config_install
##

mate_terminal_config_install () {

	echo
	echo "################################################################################"
	echo "### Head: mate_terminal_config_install"
	echo "##"
	echo




	echo
	echo gsettings set org.mate.terminal.global profile-list "['default']"
	gsettings set org.mate.terminal.global profile-list "['default']"

	echo
	echo gsettings set org.mate.terminal.global default-profile "'default'"
	gsettings set org.mate.terminal.global default-profile "'default'"


	echo
	echo




	##
	## relocatable-schemas
	##

	echo
	echo gsettings set "org.mate.terminal.profile:/org/mate/terminal/profiles/default/" visible-name "'Default'"
	gsettings set "org.mate.terminal.profile:/org/mate/terminal/profiles/default/" visible-name "Default"




	return 0

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

mate_terminal_main_install () {

	mate_terminal_package_install
	mate_terminal_config_install

}

mate_terminal_main_install

##
### Tail: Main
################################################################################
