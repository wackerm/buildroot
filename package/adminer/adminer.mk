################################################################################
#
# adminer
#
################################################################################

ADMINER_VERSION = 4.2.2
ADMINER_SITE=http://downloads.sourceforge.net/project/adminer/Adminer/Adminer%20$(ADMINER_VERSION)
ADMINER_SOURCE = adminer-$(ADMINER_VERSION)-mysql.php
ADMINER_LICENSE = GPL-2

define ADMINER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/$(ADMINER_SOURCE)
		$(TARGET_DIR)/var/www/adminer/index.php
endef

$(eval $(generic-package))
