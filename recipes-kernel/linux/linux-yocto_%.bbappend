FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

LICENSE = "MIT"

SRC_URI:append = "\
     ${@bb.utils.contains('MACHINE_FEATURES', 'hyperv', 'file://hyperv.cfg', '', d)} \
    "
