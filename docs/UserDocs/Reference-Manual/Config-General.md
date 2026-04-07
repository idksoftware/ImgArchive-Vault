# Config - General

This group of options are generally available to most commands and the user spaces.

 

**Description:**

--general (-G) :
General options that may be used generally in commands

**Syntax:**
--general <Option=Value>

[Quiet=<On|Off>] | [Silent=<On|Off>] | 
[PicturesOn =<path>] | [WWWOn =<path>] |
[Lightroom=<On|Off>]

**Options:**

--Quiet [ True | False ]

--Silent [ True | False ]

--Lightroom [ True | False ]

--FileRename

--WorkspaceOn [ True | False ] - Enables the workspace. By default the workspace is disabled. While the workspace is not enabled then no images can be checked out for editing.

--AutoCheckoutOn [ True | False ] - Enables new images uploaded into the workspace is automatically checked out for editing.

--PicturesOn [ True | False ]

--WWWOn [ True | False ]

--UserspaceOn [ True | False ]

--SQL [ True | False ]

 

 

**Examples:**

iaadmin config --general WorkspaceOn=True