# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/tizianoerlichman/esp/v5.5.1/esp-idf/components/bootloader/subproject")
  file(MAKE_DIRECTORY "/Users/tizianoerlichman/esp/v5.5.1/esp-idf/components/bootloader/subproject")
endif()
file(MAKE_DIRECTORY
  "/Users/tizianoerlichman/Library/Mobile Documents/com~apple~CloudDocs/ESP32C6/esp-zigbee-sdk/examples/esp_zigbee_greenpower/esp_zigbee_gpd/build/bootloader"
  "/Users/tizianoerlichman/Library/Mobile Documents/com~apple~CloudDocs/ESP32C6/esp-zigbee-sdk/examples/esp_zigbee_greenpower/esp_zigbee_gpd/build/bootloader-prefix"
  "/Users/tizianoerlichman/Library/Mobile Documents/com~apple~CloudDocs/ESP32C6/esp-zigbee-sdk/examples/esp_zigbee_greenpower/esp_zigbee_gpd/build/bootloader-prefix/tmp"
  "/Users/tizianoerlichman/Library/Mobile Documents/com~apple~CloudDocs/ESP32C6/esp-zigbee-sdk/examples/esp_zigbee_greenpower/esp_zigbee_gpd/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/tizianoerlichman/Library/Mobile Documents/com~apple~CloudDocs/ESP32C6/esp-zigbee-sdk/examples/esp_zigbee_greenpower/esp_zigbee_gpd/build/bootloader-prefix/src"
  "/Users/tizianoerlichman/Library/Mobile Documents/com~apple~CloudDocs/ESP32C6/esp-zigbee-sdk/examples/esp_zigbee_greenpower/esp_zigbee_gpd/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/tizianoerlichman/Library/Mobile Documents/com~apple~CloudDocs/ESP32C6/esp-zigbee-sdk/examples/esp_zigbee_greenpower/esp_zigbee_gpd/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/tizianoerlichman/Library/Mobile Documents/com~apple~CloudDocs/ESP32C6/esp-zigbee-sdk/examples/esp_zigbee_greenpower/esp_zigbee_gpd/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
