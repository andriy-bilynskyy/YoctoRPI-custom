SUMMARY = "Raspberry PI minimal image"
DESCRIPTION = "Base this image on core-image-minimal"

LICENSE = "MIT"

include recipes-core/images/core-image-minimal.bb

IMAGE_INSTALL += " \
    kernel-modules \
    connman \
    connman-client \
    openssh \
    nano \
    tzdata \
    tzdata-misc \
    tzdata-posix \
    tzdata-right \
    tzdata-africa \
    tzdata-americas \
    tzdata-antarctica \
    tzdata-arctic \
    tzdata-asia \
    tzdata-atlantic \
    tzdata-australia \
    tzdata-europe \
    tzdata-pacific \
    "

inherit extrausers
EXTRA_USERS_PARAMS += " \
    usermod -P raspberry root; \
    "