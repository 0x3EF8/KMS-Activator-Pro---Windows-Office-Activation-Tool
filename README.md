# KMS Activator Pro

## Overview
KMS Activator Pro is a command-line tool designed to activate Microsoft Windows (versions 7 to 11) and Office (2010 to 2021) using a Key Management Service (KMS) server (`kms8.msguides.com`). It features a menu-driven interface, a detailed initialization sequence with system scanning, terminal-based logging, and robust error handling.

## Supported Versions
- **Windows:**  
  - **Windows 7:** Professional (`VK7JG-NPHTM-C97JM-9MPGT-3V66T`), Enterprise (`33PXH-7Y6KF-2VJC9-XBBR8-HVTHH`)  
  - **Windows 8:** Professional (`NG4HW-VH26C-733KW-K6F98-J8CK4`), Enterprise (`32JNW-9KQ84-P47T8-D8GGY-CWCK7`)  
  - **Windows 8.1:** Professional (`GCRJD-8NW9H-F2CDX-CCM8D-9D6T9`), Enterprise (`MHF9N-XY6XB-WVXMC-BTDCT-MKKG7`)  
  - **Windows 10:** Professional (`W269N-WFGWX-YVC9B-4J6C9-T83GX`), Enterprise (`NPPR9-FWDCX-D2C8J-H872K-2YT43`), Education (`NW6C2-QMPVW-D7KKK-3GKT6-VCFB2`), Pro for Workstations (`NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J`)  
  - **Windows 11:** Professional (`W269N-WFGWX-YVC9B-4J6C9-T83GX`), Enterprise (`NPPR9-FWDCX-D2C8J-H872K-2YT43`), Education (`NW6C2-QMPVW-D7KKK-3GKT6-VCFB2`), Pro for Workstations (`NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J`)  
- **Office:** 2010 (`Office14`), 2013 (`Office15`), 2016 (`Office16`), 2019 (`Office19`), 2021 (`Office21`) (detected via `ospp.vbs` with KMS key `XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99`)  

*Note:* Only editions supporting KMS activation (e.g., Professional, Enterprise, Education) are fully supported. Home editions and retail-only versions may require manual key installation.

## Prerequisites
- **Operating System:** Windows 7, 8, 8.1, 10, or 11 (KMS-compatible editions)  
- **Administrative Privileges:** Must be run as administrator  
- **Internet Connection:** Required for KMS server communication and optional helper script download  
- **Office:** Optional, 2010-2021 volume-licensed editions  

## Usage
1. **Download:** `KMS_Activator.bat`.  
2. **Run:** Right-click and select **"Run as administrator"**.  
3. **Initialization:** The tool scans your system, displaying:  
   - Windows details (base OS, edition, build, architecture)  
   - Office details (version, path) if detected
     
4. **Menu Options:**  
   - `[1]` Activate Windows  
   - `[2]` Activate Microsoft Office  
   - `[3]` Activate Both  
   - `[4]` View Activation Status  
   - `[5]` Exit
     
## Troubleshooting
- **Admin Error:** Ensure the script runs with administrative rights.  
- **Activation Failed:**  
  - Check internet connectivity and KMS server reachability (`ping kms8.msguides.com`).  
  - Confirm your Windows/Office edition supports KMS (run `[4]` to view status).  
- **Unsupported Edition:** Manually install a KMS key with `slmgr.vbs /ipk <key>` for Windows or `ospp.vbs /inpkey:<key>` for Office.  
