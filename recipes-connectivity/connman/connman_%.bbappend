DESCRIPTION = "This is the ConnMan configuration to set up a Wired network interface."
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

FILESEXTRAPATHS_prepend := "${THISDIR}:"

SRC_URI += "file://wired.network"

do_install_append() {
    mkdir -p ${D}${sysconfdir}/systemd/network/
    install -m 0644 ${WORKDIR}/wired.network ${D}${sysconfdir}/systemd/network/
}
