#!/bin/bash
ndk_path=/home/peter/aosp/android-sdk-linux/ndk-bundle
tool_path=$ndk_path/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin
android_api=26

sys_root=$ndk_path/platforms/android-${android_api}/arch-arm64

function printE(){
    echo -e "\033[31m\033[01m\033[05m FATAL:\033[0m" $1
}

if [[ ! -d "$sys_root" ]]; then
    printE "$sys_root not exist."
    exit 1
fi

if [[ ! -f "$tool_path/aarch64-linux-android-gcc" ]]; then
    printE "aarch64-linux-android-gcc not exist."
    exit 1
fi
if [[ ! -f "$tool_path/aarch64-linux-android-objdump" ]]; then
    printE "aarch64-linux-android-objdump not exist."
    exit 1
fi

# echo "$tool_path/aarch64-linux-android-gcc --sysroot=$sys_root test_arm64.c"
$tool_path/aarch64-linux-android-gcc --sysroot=$sys_root test_arm64.c -g -fstack-protector-all
#$tool_path/aarch64-linux-android-gcc --sysroot=$sys_root test_arm64.c -g
$tool_path/aarch64-linux-android-objdump -dS a.out

