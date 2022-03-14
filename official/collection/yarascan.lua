--[=[
name: Yara Scanner
type: Collection
description: | 
    Scans files on disk with YARA signatures categorized as either informational
author: Infi
guid: f0565351-1dc3-7782-90b3-34a5765bytrs
created: 2020-11-11
updated: 2020-12-11
# Global variables
globals:
- yarascanner_scan_activeprocesses:
    description: Adds running processes to list of paths to scan
- yarascanner_scan_appdata:
    description: Recurse through each user's appdata for binaries to scan
- yarascanner_max_size:
    description: Largest size of binary in Kb
- yarascanner_additional_paths:
    description: Additional paths to scan
    type: string
# Runtime arguments
args:
- scan_activeprocesses:
    description: Adds running processes to list of paths to scan

- additional_paths:
    description: Additional paths to scan
    type: string
]=]


paths = {
    "c:\\windows\\temp"
}