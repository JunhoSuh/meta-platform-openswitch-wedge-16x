# Copyright (C) 2016 Hewlett Packard Enterprise Development LP

PR_append = "_wedge_16x"

SRC_URI = "git://git@github.com/JunhoSuh/ops-hw-config.git;protocol=https;branch=master \
"
SRCREV = "1eae99b72fe775909f9dc6a09ecbf307f115acb1"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PLATFORM_PATH = "Accton/Wedge-16X-AC"

do_install_append() {
	mkdir ${D}${sysconfdir}/openswitch/platform/Joytech/
	ln -sf ${sysconfdir}/openswitch/platform/${PLATFORM_PATH} ${D}${sysconfdir}/openswitch/platform/JoyTech/Wedge-AC\ 20-001329
}
