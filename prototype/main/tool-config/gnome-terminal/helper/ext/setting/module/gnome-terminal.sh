

################################################################################
### Head: Setting / Module / Gnome-Terminal / Variable
##

gnome_terminal_var_init () {

	THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME="50_gnome-terminal.conf"

	THE_GNOME_TERMINAL_SOURCE_DCONF_DB_FILE_PATH="${THE_SOURCE_DCONFDB_DIR_PATH}/${THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME}"
	THE_GNOME_TERMINAL_TARGET_DCONF_DB_FILE_PATH="${THE_TARGET_DCONFDB_DIR_PATH}/${THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME}"


	return 0

}

gnome_terminal_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: gnome_terminal_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Gnome-Terminal / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME=${THE_GNOME_TERMINAL_DCONF_DB_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_GNOME_TERMINAL_SOURCE_DCONF_DB_FILE_PATH=${THE_GNOME_TERMINAL_SOURCE_DCONF_DB_FILE_PATH}"
	util_debug_echo "THE_GNOME_TERMINAL_TARGET_DCONF_DB_FILE_PATH=${THE_GNOME_TERMINAL_TARGET_DCONF_DB_FILE_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: gnome_terminal_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

gnome_terminal_var_init
gnome_terminal_var_dump

##
### Tail: Setting / Module / Gnome-Terminal / Variable
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Terminal / Portal
##

gnome_terminal_config_install () {

	util_error_echo "gnome_terminal_config_install"

	gnome_terminal_settings_set_all

	return 0
}


gnome_terminal_asset_install () {

	#util_error_echo "gnome_terminal_asset_install"

	util_error_echo "!!! Do Nothing !!!"

	return 0
}


gnome_terminal_prototype_install () {

	#util_error_echo "gnome_terminal_prototype_install"

	sys_dconf_init

	gnome_terminal_dconfdb_put_all

	sys_dconf_update

	return 0
}


##
### Tail: Setting / Module / Gnome-Terminal / Portal
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Terminal / Settings
##

gnome_terminal_settings_set_all () {

	gnome_terminal_config_by_gsettings

	return 0
}

gnome_terminal_config_by_gsettings () {


	util_error_echo
	util_error_echo 'gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false'
	gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false


	util_error_echo
	util_error_echo

	##
	## https://wiki.gnome.org/Apps/Terminal/FAQ
	## $ dpkg -L gnome-terminal | grep gschema
	## /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
	## $ view /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
	##


	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes
	util_error_echo "profile=${profile}"


	util_error_echo
	util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" scrollbar-policy 'never'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" scrollbar-policy 'never'

	util_error_echo
	util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-theme-colors false"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-colors false


	#util_error_echo
	#util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(255,255,255)'"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" foreground-color 'rgb(255,255,255)'

	util_error_echo
	util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(170,170,170)'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" foreground-color 'rgb(170,170,170)'


	util_error_echo
	util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(0,0,0)'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" background-color 'rgb(0,0,0)'


	#util_error_echo
	#util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-theme-transparency false"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-transparency false

	#util_error_echo
	#util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-transparent-background true"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-transparent-background true

	#util_error_echo
	#util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" background-transparency-percent 15"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" background-transparency-percent 15

	util_error_echo
	util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" visible-name 'Default'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" visible-name 'Default'

	util_error_echo
	util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-system-font false"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-system-font false

	util_error_echo
	util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" font 'Monospace 14'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" font 'Monospace 14'

	util_error_echo
	util_error_echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" scrollback-unlimited true"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" scrollback-unlimited true


	return 0

}

##
### Tail: Setting / Module / Gnome-Terminal / Settings
################################################################################


################################################################################
### Head: Setting / Module / Gnome-Terminal / Dconf
##

gnome_terminal_dconfdb_put_all () {

	gnome_terminal_dconfdb_put_main

	return 0
}


gnome_terminal_dconfdb_put_main () {

	local source_dconfdb_file_path="${THE_GNOME_TERMINAL_SOURCE_DCONF_DB_FILE_PATH}"

	local target_dconfdb_file_path="${THE_GNOME_TERMINAL_TARGET_DCONF_DB_FILE_PATH}"

	#util_error_echo "${source_dconfdb_file_path}"

	#util_error_echo "${target_dconfdb_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	util_error_echo


	return 0
}

##
### Tail: Setting / Module / Gnome-Terminal / Dconf
################################################################################
