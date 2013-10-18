cam
===

Allwinner h264 demo app for Android
Compiles with Android NDK

Demo takes 500 frames from camera and compresses them with h264
output is in /mnt/sdcard/h264.dat


CC  = arm-linux-androideabi-gcc --sysroot=$(SYSROOT)
jonsmirl@terra:~/cam$ set | grep SYSROOT
SYSROOT=/home/apps/adt/android-ndk-r9/platforms/android-18/arch-arm

PATH
/home/apps/adt/android-ndk-r9/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin:
/home/apps/adt/sdk/tools:
/home/apps/adt/sdk/platform-tools
