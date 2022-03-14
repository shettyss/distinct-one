--[=[
name: Force System Reboot O3
filetype: Infocyte Extension
type: Response
description: Forces system reboot after delay
author: Infocyte
guid: nm031ce0-75c4-42d9-a2b3-d32fad3b69iw
created: 2022-01-22
updated: 2022-12-14
# Global variables
globals:
- reboot_reason:
    description: Default reason message to display to user and input in logs
    type: string
    default: Infocyte
# Runtime arguments
args:
- reason:
    description: Reason message to display to user and input in logs
    type: string
    required: false
]=]

--[=[ SECTION 1: Inputs ]=]
-- hunt.arg(name = <string>, isRequired = <boolean>, [default])
-- hunt.global(name = <string>, isRequired = <boolean>, [default])

default_reason = "Infocyte"