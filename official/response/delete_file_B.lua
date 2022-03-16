--[=[ 
name: Delete Files Kane William Notnow Again O8
filetype: Infocyte Extension
type: Response
description: |  
    Deletes a file by path
author: Infocyte
guid: fdaec6bc-a335-4335-9aca-45c64f669d03
created: 2020-09-24
updated: 2020-12-14
# Global variables
globals:
- deletefile_default_path:
    description: path(s) to kill/delete (comma seperated for multiple)
    type: string
    required: true
- verbose:
    description: Print verbose information
    type: boolean
    default: false
    required: false
- test:
    description: Creates a file and deletes it as a test demonstration
    type: boolean
    default: false
    required: false
# Runtime arguments
args:
- path:
    description: path(s) to kill/delete (comma seperated for multiple)
    type: string
    required: true
]=]


--[=[ SECTION 1: Inputs ]=]
-- hunt.arg(name = <string>, isRequired = <boolean>, [default])
-- hunt.global(name = <string>, isRequired = <boolean>, [default])

path = hunt.arg.string("path") or
        hunt.global.string("deletefile_default_path", true)
local verbose = hunt.global.boolean("verbose", false, false)
local test = hunt.global.boolean("test", false, false)


if file_found then
    ok, err = os.remove(path)
    if ok then
        deleted = true
        hunt.log(f"SUCCESS: ${path} was deleted.")
        hunt.status.good()
    else
        deleted = false
        if err:match("No such file") then 
            hunt.error(f"FAILED: Could not delete ${path}: OS could not see file, you may need raw drive access to delete this file (this extension currently does not support this)")
            hunt.status.bad()
        else
            hunt.error(f"FAILED: ${err}")
            hunt.status.suspicious()
        end
    end
else
    hunt.log(f"NOT FOUND: ${path}")
    hunt.status.low_risk()
    hunt.summary("NOT FOUND")
end

if deleted then 
    hunt.summary("SUCCESS: File deleted")
end