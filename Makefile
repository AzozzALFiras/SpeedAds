
THEOS = /Users/azozzalfiras/opt/theos


ARCHS = armv7 armv7s arm64 arm64e

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SpeedAds

SpeedAds_FILES = Tweak.xm
SpeedAds_LIBRARIES = sparkapplist

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += speedads
include $(THEOS_MAKE_PATH)/aggregate.mk
