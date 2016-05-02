# Copyright (C) 2016 Hewlett Packard Enterprise Development LP

PR_append = "_wedge_16x"

SRC_URI = "git://git@github.com/JunhoSuh/ops-hw-config.git;protocol=https;branch=master \
"
SRCREV = "9450035742fbc6062a8e5701dbccc6b7e4b61dcf"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PLATFORM_PATH = "Accton/Wedge-16X-AC"

do_install_append() {
	mkdir ${D}${sysconfdir}/openswitch/platform/JoyTech/
	ln -sf ${sysconfdir}/openswitch/platform/${PLATFORM_PATH} ${D}${sysconfdir}/openswitch/platform/JoyTech/Wedge-16X-AC\ 66-16000A
}
