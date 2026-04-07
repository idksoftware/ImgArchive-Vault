# CONFIG – Configures the ImgArchive environment

# Name


isadmin config <options>

## Synopsis


iaadmin config [-q | –quiet][ –general <Option=Value>]
| [--logging <Option=Value>] | [--network <Option=Value>]
| [--folders <Option=path>] | [--master <Option=Value>]
| [--derivative <Option=Value>] | [--backup <Option=Value>]
| [--exiftool <Option=Value>] | [--cloud-backup <Option=Value>]

## Description


the command “config” configures ImgArchive. ImgArchive can then be used by users of the ImgArchive in a controlled configuration file. Note: ImgArchive can also be configured using the OS’s environment.

## Options


The options are partitioned into sections. Each section contains a set of options that refer to a set of associated functions this are detailed below:

- [General](Config-General.md) – General options that may be used generally in commands
- Logging – Logging option that control the logging carried out by applications
- [Network](Config-Network.md) – This controls the network interface
- System Folders – These control the folder paths that the system uses.
- Master Archive – This archive contains the master images. This section controls this archive.
- Derivative Archive – This archive contains the derivative images. This section controls this archive.
- Archive Backup – These options control the backup activities.
- [External Exif Tool](Config-Exiftool.md) – These configure the external EXIF tool.
- [Template ](Config-Template.md)- This allows you to edit the bulk metadata templates.
- [Rename ](Config-Image-rename.md)- This allows you to control the image rename functions
- [Cloud-Backup](Config-Cloud-Backup.md) - This allows you to enable and configure cloud backup

### **1. General**

- Contains broad, system‑wide options.
- These settings apply across many commands and functions.

### **2. Logging**

- Controls how ImgArchive records activity.
- Includes log levels, log file locations, and other diagnostic settings.

### **3. Network**

- Manages the network interface.
- This includes ports for:
  - status events
  - remote commands
- Useful when ImgArchive is monitored or controlled by external applications.

### **4. System Folders**

- Defines the folder paths ImgArchive uses internally.
- Ensures the application knows where to read/write required files.

### **5. Master Archive**

- The “source of truth” archive containing original images.
- This section configures how that archive is stored and accessed.

### **6. Derivative Archive**

- Stores processed or transformed versions of images.
- Settings here control how derivative images are organized and managed.

### **7. Archive Backup**

- Controls backup behaviour for archives.
- Includes scheduling, destinations, and backup strategy.

### **8. External EXIF Tool**

- Configures integration with an external EXIF metadata tool.
- Allows ImgArchive to extract or manipulate metadata using third‑party utilities.

### **9. Template**

- Provides access to bulk metadata templates.
- Lets you edit templates used for batch metadata operations.

### **10. Rename**

- Controls how images are renamed.
- Useful for enforcing naming conventions or automated renaming rules.

### **11. Cloud‑Backup**

- Enables and configures cloud‑based backup.
- Defines cloud provider settings, credentials, and behaviour.



### General

---

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





>
> -Quiet [ True | False ] 
>
> --Silent [ True | False ] 
>
> --Lightroom [ True | False ] 
>
> --FileRename
>
> --WorkspaceOn [ True | False ] - Enables the workspace. By default the workspace is disabled. While the workspace is not enabled then no images can be checked out for editing.
>
> --AutoCheckoutOn [ True | False ] - Enables new images uploaded into the workspace is automatically checked out for editing.
>
> --PicturesOn [ True | False ] 
>
> --WWWOn [ True | False ] 
>
> --UserspaceOn [ True | False ] 
>
> --SQL [ True | False ]
<<<<<<< HEAD
>
**Examples:**

> iaadmin config --general WorkspaceOn=True 
------
### Logging

LogLevel
This is used to set the logging level that the ImgArchive applications log to the system log file. This enables the create of a log that itemises the progress of the application during performing particular tasks. The degree of logging will depend on the log level selected using this option.

admin config –logging LogLevel=<TRACE | FINE | INFO | STATUS | SUMMARY

| WARNING | ERROR | FATAL>

ConsoleLevel
The application will normally log progress to the screen this can be controlled by this option.

admin config –logging ConsoleLevel=<TRACE | FINE | INFO | STATUS | SUMMARY

| WARNING | ERROR | FATAL>

LogPath

admin config –logging LogPath=<path>

------

### Network

--network (-N) :
Configure network parameters

#### Syntax:

--network <Option=Value>
[EventsEnabled=<Enabled | Disabled>] | [CommandsEnabled=<Enabled | Disabled>] |
[EventsPort=<path>] | [EventsAddress=<path>] |
[CommandPort=<path>]

#### Description:

Some operations that ImgArchive may preform may take sometime. I may be necessary to pause or stop these operations while mid-way though running. ImgArchive allow external applications to monitor and control these long operations using network sockets.

The monitoring is made by connecting to the event socket. These socket needs to be enabled and configured with an address where the events are going i.e the connecting applications address, and a port number the connecting application will be listening.

Once enabled, commands can be sent using the command interface socket. This is a server which can be setup to listen for incoming connections on a predefined port port number

These options detailed below are used to set these network parameters.

##### **Network Event Monitor**

These options are for setting up the network monitor:

##### EventsEnabled

Enable or disable the events interface.

admin config –network EventsEnabled=<Enabled | Disabled>

##### EventsPort

Defines the event port.

admin config –network EventsPort=<Number>

EventsAddress
Defines the event interface address used by the client application.

admin config –network EventsAddress=<Number>

##### **Network Command interface**

This is a server connection were clients can connect to ImaArchive applications. clients can then send and send receive commands to these applications.

##### CommandsEnabled

##### Enable or disable the commands interface.

admin config –network CommandsEnabled=<Enabled | Disabled>

##### CommandPort  

Defines the command port.

admin config –network CommandPort=<Number>

------

### Folders

This section enables you to change default folder paths of components to a more appropriate location. For example, the master repository is where master images are stored. This repository may grow to be very large and therefore require a large amount of disk space. It may be appropriate to change the location to a dedicated disk.

A brief description of the folders use within ImgArchive 

config - Configuration path

master - The master archive path. This is only a default for the correct operation of the application. The best way of setting up the master archive is with its own hard drive.

derivative - The derivative archive path. This is only a default for the correct operation of the application. The best way of setting up the derivative archive is with its own hard drive.

history - Archive history path.

hooks - External application hooks path

logs - Application logs path

sqldb - SQL database path

tmp - Application temporary

tools - Application tools path.

web - Web site root path.

 

HookScripsPath = <path> - This is the location where hook programs or scripts are located.

ToolsPath = <path> - ImgArchive can use applications such as imagemagick. ImgArchive will use this location to find this tool.

TempPath = <path> - This file path is where ImgArchive will use as a temporary file store.

SystemPath = <path> - This is the location of the ImgArchive system files.

MasterPath = <path> - This is the location of the master repository.

MasterCataloguePath = <path> - This is the location of the picture store.

DerivativePath = <path> - This is the location of the derivative repository.

SQLDatabasePath = <path> - This is the location of the sqlight database.

LogPath = <path> - This is the location of logging files. These log file log the progress of the ImgArchive as it performs prescribed tasks.

HistoryPath = <path> - This path is were the historical logs for individual images and sets of changes are located.

LightroomPath = <path> - This is where ImgArchive expects Lightroom images will be located.

------

### Master 

Master Archive (repository) These are options that control the master repository. One important issue with the master Archive is that it is backed up as part of the archive process. Most of these options are to control this important function. Additionally the master repository can be optionally verified against the backup(s).

BackupOneEnabled
admin config –master BackupOneEnabled=<Enabled | Disabled>

Enables backup one. A valid path to the backup needs to be supplied for the backup to operate.

BackupTwoEnabled
admin config –master BackupTwoEnabled=<Enabled | Disabled>

BackupOne

admin config –master BackupOne=<path>

BackupTwo

admin config –master BackupTwo=<path>

------

### Derivative

Derivative Archive (repository). This repository is used to store images changed from there originally stored master image. Any edited image will be stored here. As editing images in applications such as photoshop may have taken some time and effort this repository can be backed up in much the same way the master repository is backed up. Therefore, the options are the same. See below:

BackupOneEnabled
admin config –derivative BackupOneEnabled=<Enabled | Disabled>

BackupTwoEnabled
admin config –derivative BackupTwoEnabled=<Enabled | Disabled>

BackupOne

admin config –derivative BackupOne=<path>

BackupTwo

admin config –derivative BackupTwo=<path>

------

### Backup

Archive Backup
media-size
media-path
from-date
to-date

------

### Exiftool 

 

External Exif Tool
ExifMapPath

admin config –exiftool ExifMapPath=<path>

ExifMapFile

admin config –exiftool ExifMapFile=<filename>

ExifTool
admin config –exiftool ExifTool=<toolname>

ExifCommandLine

admin config –exiftool ExifCommandLine=<commandline>

 

C:\Users\Iain Ferguson>iaadmin help config

iaadmin Tool provides administration house keeping support for ImgArchive.

NAME:
config

SYNTAX:
isadmin config [-q | --quiet] | [ --general <Option=Value>]
| [--logging <Option=Value>] | [--network <Option=Value>]
| [--folders <Option=pathe>] | [--master <Option=Value>]
| [--derivative <Option=Value>] | [--backup <Option=Value>]
| [--exiftool <Option=Value>]

Description:
Configure ImgArchive's parameters

OPTIONS:

 

--logging (-L) :
Logging option that control the logging carried out by applications
Syntax:
--logging <Option=Value>
[LogLevel=<level>] | [ConsoleLevel=<level>]
[LogPath=<path>]

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

--master (-M) :
This section controls the master archive
Syntax:
--master <Option=Value>
[BackupOneEnabled=<Enabled|Disabled>] |
[BackupTwoEnabled=<Enabled|Disabled>] |
[BackupOne=<path>] | [BackupTwo=<path>]

--derivative (-D) :
This section controls the derivative archive.
Syntax:
--derivative <Option=Value>
[BackupOneEnabled=<Enabled|Disabled>] |
[BackupTwoEnabled=<Enabled|Disabled>] |
[BackupOne=<path>] | [BackupTwo=<path>]

--exiftool (-E) :
Configure exit look intergration
Syntax:
--exiftool <Option=Value>
[ExifMapPath=<path>] | [ExifMapFile=<filename>]
[ExifFileDelim=<character>]
[ExifTool=<path/name>] | [ExifCommandLine=<argumentlist>]

--network (-N) :
Configure network parameters
Syntax:
--network <Option=Value>
[EventsEnabled=<Enabled|Disabled>] | [CommandsEnabled=<Enabled|Disabled>] |
[EventsPort=<path>] | [EventsAddress=<path>] |
[CommandPort=<path>]

Fatal:0000 - Failed to run application: ImgArchive Admin
