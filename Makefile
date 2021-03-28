TARGET := iphone:clang:latest:12.0
INSTALL_TARGET_PROCESSES = Music

ARCHS = arm64 arm64e

DEBUG = 0
FINALPACKAGE = 1

PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MusicArtworkNoCorners

MusicArtworkNoCorners_FILES = Tweak.xm
MusicArtworkNoCorners_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
