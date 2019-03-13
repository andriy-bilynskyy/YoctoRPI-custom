DESCRIPTION = "This is the ssh server configuration file."
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

FILESEXTRAPATHS_prepend := "${THISDIR}:"

SRC_URI += "file://sshd_config"

do_compile_append() {
    mkdir -p ${D}${sysconfdir}/ssh/
    install -m 0644 ${WORKDIR}/sshd_config ${D}${sysconfdir}/ssh/
}
