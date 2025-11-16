# Tile

### Tile is a "Zigbee Green Power" Switch based on ESP32C6.

<img
  alt="image"
  src="https://github.com/user-attachments/assets/87ddf78b-f01d-4e73-ae08-fb02279ff16f"
  width="100%"
/>
<br>
Concept Rendering with future 9-Key version
<br>
<br>

## Requirements
- ESP32C6 Dev Board, such as the XIAO Seeed Studio ESP32C6
  
- IDE such as VSCode
  
- Espressif IoT Development Framework ESP-IDF
  
- ESP ZigBee SDK
  
- Optional for debugging:

  - ConBee II (ZShark Sniffer Firmware)
  - Wireshark for Sniffing ZigBee Traffic
<br>

## What does it currently do?

The code (found in main/esp_zigbee_gpd.c) sets up the ESP32C6 as a "ZigBee Green Power Device" 4-Way switch simulating an EnOcean PTM 215Z, commonly used in "Friends of Hue" / "Works with Hue" Switches.

On boot, after pressing the Pushbutton on the ESP32C6, the commisioning routine is started, simulating the 10s press of the lower right key, followed by a double key press 2s later to confirm the commision.

After the commision routine is complete, the pushbutton sends a "Recall Scene 0" command on press and a "Recall Scene 4" command on release, that is interpreted as a "short button press" event by the hue bridge.

This is also the Workaround used by EnOcean to simulate long presses, where Scene 0 to 3 are press-down events, and Scene 4 to 7 are release-events, forming 4 press and release pairs:

- Button A0: 0 and 4
- Button A1: 1 and 5
- Button B0: 2 and 6
- Button B1: 3 and 7

<br>
Currently only Button A0 is configured to the pushbutton on the ESP32C6. More GPIO pins can be configured by modifiying the code to suit your project.
<br>
<br>

## Next Steps

The goal is to build a low power device (<15 mA) resembling the concept images, including a custom PCB-Design with Cherry ULP switches, CR2450 battery / rechargeable USB-C LiPo-Module and enclosure.

Further steps include adapting the project to Silicon Labs EFR32MG24 Multiprotocol SoCs for native Matter, Thread and ZigBee support, so that the device can be configured to multiple platforms.
<br>
<br>


<img
  alt="Generated Image November 16, 2025 - 2_39PM"
  src="https://github.com/user-attachments/assets/808c6425-224c-4034-9d6f-7be4a3310295"
  width="49%"
/>&nbsp;&nbsp;&nbsp;<img
  alt="Generated Image November 16, 2025 - 2_40PM"
  src="https://github.com/user-attachments/assets/8ce0b259-455f-4d94-ab5b-f54110822796"
  width="49%"
/>
<br>
Concept Rendering of 4-Key version
<br>
<br>


## Ressources
- [ESP IDF](https://github.com/espressif/esp-idf)
- [ESP ZigBee SDK](https://github.com/espressif/esp-zigbee-sdk)
- [ESP ZigBee Green Power Documentation](https://docs.espressif.com/projects/esp-zigbee-sdk/en/latest/esp32/api-reference/zcl/esp_zigbee_zcl_green_power.html)
- [ZigBee Green Power Specification v.1.1.2](https://github.com/tiziano149/Tile/blob/main/Green-Power-Basic_Specification_v1.1.2.pdf)
- [EnOcean PTM 215Z User Manual](https://github.com/tiziano149/Tile/blob/main/PTM_215ZE_User_Manual.pdf)
- [Dresden Elektronik Sniffer GCFFFlasher](https://github.com/dresden-elektronik/gcfflasher)
- [Dresden Elektronik Firmware Repo for ConBee II](https://deconz.dresden-elektronik.de/deconz-firmware/)
