#!/usr/bin/env bash

set -e


################################################################################
### Head: variety
##

variety_asset_install () {

	echo
	echo "##"
	echo "## Asset: variety"
	echo "##"
	echo

	echo "## Do Nothing"


	echo

}



##
### Tail: variety
################################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	variety_asset_install

}

##
### Tail: asset_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_asset_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
