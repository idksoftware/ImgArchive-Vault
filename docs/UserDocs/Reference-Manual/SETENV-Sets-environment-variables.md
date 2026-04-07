# SETENV - Sets environment variables

# Name





## Synopsis


Iaadmin setenv <options>

## Description


This command is provided to enable using ImgArchive defined Operating systems environment variables easier to set.

ImgArchive environment variables allow much of the ImgArchive configuration to be defined using the underlying OS environment. The can be both at user or System levels. See Environment Variables

## Syntax

 iaadmin setenv [-q | --quiet] | [ --folders <Option=path>]
| [--enable <Option>] | [--disable <Option>]

## Options


–out :

Output type: text, xml, json or html.

out=[plain] | [xml] | [json] | [html]

–file :

output file name.
Syntax:

file=<filename>

 

C:\Users\Iain Ferguson>iaadmin help setenv

iaadmin Tool provides administration house keeping support for ImgArchive.

NAME:
setenv

SYNTAX:
isadmin setenv [-q | --quiet] | [ --folders <Option=path>]
| [--enable <Option>] | [--disable <Option>]

Description:
Configure ImgArchive's environment variables.

OPTIONS:

--folders (-F) :
These control the folder paths that the system uses.
Syntax:
--folders <Option=Value>
[HookScripsPath=<path>] | [ToolsPath=<path>]
[TempPath=<path>] | [SystemPath=<path>]
[MasterPath=<path>] | [MasterCataloguePath=<path>]
[DerivativePath=<path>] | [SQLDatabasePath=<path>]
[LogPath=<path>] | [HistoryPath=<path>]
[LightroomPath=<path>]

--enable :
Edables an option.
Syntax:
--enable <option>

--disable :
Disables an option.
Syntax:
--disable <option>

Fatal:0000 - Failed to run application: ImgArchive Admin