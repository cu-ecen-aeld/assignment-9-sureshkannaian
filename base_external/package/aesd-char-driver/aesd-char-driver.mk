##############################################################
#
#AESD-CHAR
#
##############################################################

AESD_CHAR_DRIVER_VERSION = 'fbfe5bd6d81e0de1227c9a7e1b81f3ecc39d3940'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-sureshkannaian.git'
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUS = NO
AESD_CHAR_DRIVER_MODULE_SUBDIRS=aesd-char-driver/

#AESD_CHAR_DRIVER_SITE =/home/sureshk/skprojects/5306/week2/assignments-3-and-later-sureshkannaian
#AESD_CHAR_DRIVER_SITE_METHOD = local

define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin	
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/drivertest.sh $(TARGET_DIR)/usr/bin	
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/etc/init.d		
endef
$(eval $(kernel-module))
$(eval $(generic-package))
