#!/usr/bin/env bash

adb logcat -c
adb logcat *:E -v color &
./gradlew jacocoInstrumentationTestReport
adb remount
adb shell screencap -p /sdcard/screencap.png
adb pull /sdcard/screencap.png
find screencap.png
