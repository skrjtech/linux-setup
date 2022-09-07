#!/bin/bash
packageCheck() {
	package=(`ls /usr/share`)
	if printf '%s\n' "${package[@]}" | grep -qx $0; then
		echo "true"
	else
		echo "false"
	fi
}
packageCheck $1
