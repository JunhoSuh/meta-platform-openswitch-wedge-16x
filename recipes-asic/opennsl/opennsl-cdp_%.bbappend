# Copyright (C) 2016 Hewlett Packard Enterprise Development LP

PR_append = "_wedge_16x"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = "git://git@github.com/JunhoSuh/OpenNSL.git;protocol=https;branch=ops \
file://Makefile-modules \
"
SRCREV = "8f592c04f828908d508bdbb782540928cefe6349"

OPENNSL_PLATFORM = "wedge-trident"
OPENNSL_PLATFORM_BUILD = "43520f0"
GPL_MODULES_DIR = "sdk-6.4.10-gpl-modules"

S = "${WORKDIR}/git"
