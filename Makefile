THEOS_DEVICE_IP = 129.21.126.97
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VenmoImproved
VenmoImproved_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Venmo"
