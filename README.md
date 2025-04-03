# KMS Activator Pro

## Overview
KMS Activator Pro is a command-line tool to activate Microsoft Windows (7 to 11) and Office (2010 to 2021) using a KMS server (`kms8.msguides.com`). It features a menu-driven interface, loading sequence, and error handling.

## Supported Versions
- **Windows:** 
  - 7 Professional (`VK7JG-NPHTM-C97JM-9MPGT-3V66T`), Enterprise (`33PXH-7Y6KF-2VJC9-XBBR8-HVTHH`)
  - 8 Professional (`NG4HW-VH26C-733KW-K6F98-J8CK4`), Enterprise (`32JNW-9KQ84-P47T8-D8GGY-CWCK7`)
  - 8.1 Professional (`GCRJD-8NW9H-F2CDX-CCM8D-9D6T9`), Enterprise (`MHF9N-XY6XB-WVXMC-BTDCT-MKKG7`)
  - 10 Professional (`W269N-WFGWX-YVC9B-4J6C9-T83GX`), Enterprise (`NPPR9-FWDCX-D2C8J-H872K-2YT43`)
  - 11 Professional (`W269N-WFGWX-YVC9B-4J6C9-T83GX`), Enterprise (`NPPR9-FWDCX-D2C8J-H872K-2YT43`)
- **Office:** 2010, 2013, 2016, 2019, 2021 (detected via `ospp.vbs`)

*Note:* Only Professional/Enterprise editions are supported; Home editions are not.

## Prerequisites
- Windows 7-11 (Pro/Enterprise)
- Administrative privileges
- Internet connection
- Office 2010-2021 

## Usage
1. Download `KMS_Activator_Pro.bat`.
2. Right-click and select **"Run as administrator"**.
3. Choose from the menu:
   - `[1]` Activate Windows
   - `[2]` Activate Office
   - `[3]` Activate Both
   - `[4]` View Status
   - `[5]` Exit

## Configuration
- **KMS Server:** Edit `/skms` or `/sethst` to change from `kms8.msguides.com`.
- **Hidden Script:** Remove the `powershell` command at the start to disable `kms_helper.vbs` download.

## Troubleshooting
- **Admin Error:** Run as administrator.
- **Activation Failed:** Check internet and KMS server reachability.
- **Unsupported Edition:** Install a KMS key manually with `slmgr.vbs /ipk`.

