# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/opt/esp/idf/components/bootloader/subproject"
  "/ESP32-LoRaMac-node/build/bootloader"
  "/ESP32-LoRaMac-node/build/bootloader-prefix"
  "/ESP32-LoRaMac-node/build/bootloader-prefix/tmp"
  "/ESP32-LoRaMac-node/build/bootloader-prefix/src/bootloader-stamp"
  "/ESP32-LoRaMac-node/build/bootloader-prefix/src"
  "/ESP32-LoRaMac-node/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/ESP32-LoRaMac-node/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/ESP32-LoRaMac-node/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
