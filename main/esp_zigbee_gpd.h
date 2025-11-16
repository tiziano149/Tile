/*
 * SPDX-FileCopyrightText: 2021-2023 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: CC0-1.0
 *
 * Zigbee Green Power device Example
 *
 * This example code is in the Public Domain (or CC0 licensed, at your option.)
 *
 * Unless required by applicable law or agreed to in writing, this
 * software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied.
 */
#include "esp_zigbee_core.h"
#include "switch_driver.h"

#define ESP_ZB_ZGPD_SRC_ID (0x01751E4C)         /*!< Clone the PTM 215Z source identifier */
#define ESP_ZB_ZGPD_FRAMER_COUNTER (0x3DCC)     /*!< Frame counter captured from PTM 215Z */
#define ESP_ZB_ZGPD_CHANNEL (25)                /*!< Channel */

/* ZGPD app_info(info_length + info) */
#define ESP_ZB_ZGPD_APP_INFO_CMD                                                            \
    {                                                                                       \
        0x12, /* number of commands */                                                      \
        0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, /* recall scenes */                 \
        0x22, 0x23,                                                                         \
        0x60,                                                                               \
        0x62, 0x63, 0x64, 0x65,                                                             \
        0x66, 0x67, 0x68                                                                    \
    }

/* Security key */
#define ESP_ZB_ZGPD_SECURITY_KEY                                                                       \
    {                                                                                                  \
        0xa7, 0x89, 0x98, 0x20, 0x7b, 0x24, 0x33, 0x92, 0xa5, 0x46, 0x36, 0x3d, 0xdd, 0x66, 0xe5, 0xc0 \
    }

#define ESP_ZB_DEFAULT_RADIO_CONFIG()                           \
    {                                                           \
        .radio_mode = ZB_RADIO_MODE_NATIVE,                     \
    }

#define ESP_ZB_DEFAULT_HOST_CONFIG()                            \
    {                                                           \
        .host_connection_mode = ZB_HOST_CONNECTION_MODE_NONE,   \
    }
