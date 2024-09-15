
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.fs.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := init.fs.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/
include $(BUILD_PREBUILT)

$(shell mkdir -p $(TARGET_OUT_VENDOR)/lib/pb_modules; \
cp -a $(LOCAL_PATH)/tfs_linux.ko $(TARGET_OUT_VENDOR)/lib/pb_modules/tfs_linux.ko; \
cp -a $(LOCAL_PATH)/texfat.ko $(TARGET_OUT_VENDOR)/lib/pb_modules/texfat.ko; \
cp -a $(LOCAL_PATH)/tntfs.ko $(TARGET_OUT_VENDOR)/lib/pb_modules/tntfs.ko; \
)

