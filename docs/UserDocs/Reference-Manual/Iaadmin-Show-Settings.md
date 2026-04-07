# Iaadmin Show - Settings

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

The settings options are partitioned into sections. Each section contains a set of options that refer to a set of associated functions this are detailed below: However there is a All option to display all 



--setting (-s) :
Show setting
Syntax:
--setting=<[general] | [logging] | [network]
| [folders] | [master] | | [derivative] | [backup] | [exiftool]

General

Logging

Network

System Folders

Master Archive

Derivative Archive

Archive Backup

Exif tool

- --setting general
- --setting logging
- --setting network
- --setting folders
- --setting master
- --setting derivative
- --setting archive
- --setting userspace
- --setting metadata
- --setting workspace
- --setting backup
- --setting exiftool
- --[setting rename](https://idk-solutions.atlassian.net/wiki/spaces/ImgaWiki/pages/2243952643)
- --setting all

 

 

This configuration file is found in the default location, for example: Windows will be "c:/ProgramData/IDK-Software/ImgArchive "

or by setting the home path

These titles are described in more detail in the the following sections:

General

 

--allowed :
Shows which file type are allowed into the archive.
Syntax:
--allowed=<[ raw | picture | all ]>

--env :
Shows the archives environment variable.
Syntax:
--env=<[ folders | enabled | all ]>

--out :
Output type: text, xml, json or html.
Syntax:
out=<[plain] | [xml] | [json] | [html]>

--file :
output file name.
Syntax:
file=<filename>

 

These options are general to the running of the application.
Log level: LogLevel 
Console level: ConsoleLevel
File Rename: default
SQL database: True | False
Silent On: True | False
Quiet On: True | False

dry run

-dry_run (-dr) This allows you to run ImgArchive in a mode that would carry out the required operations but makes no changes to the archive.

default = false.

useDatabase = true;

 

**Example:**

 

General
Log level: STATUS
Console level: STATUS
File Rename: default
SQL database: False
Silent On: False
Quiet On: False

 

Logging

These are the options that relate to the logging functions. Logging message can go both to the log file and or the the console screen.

quiet

-quiet (-q) Requests that the SIA print only essential information while performing an operation. default = false

silent

-silent (-s) Suppresses all messages during run that are normally sent to the console. silent = false

Log Level

LogLevel The log level determines the granularity of the message that is logged, from fatal only (FATAL) to detailed debug (FINEST). The following values apply:

SEVERE, WARNING, INFO, CONFIG, FINE, FINER, and FINEST.

These log levels are hierarchically inclusive, which means that if you set a particular log level, such as INFO, the messages that have log levels above that level (SEVERE and WARNING) are also included. If you set the log level to the lowest level, FINEST, your output will include all the messages in the file. The log level can be set for both the console screen and the log file. The default setting is SUMMARY. default = "SUMMARY";

ConsoleLevel

Network

Some of the operations carried in SIA can be very long time wise? In order to control and receive event messages as to how SIA is progressing two network connections may be set-up. The first is the command interface connection over TCP and the second is the event message interface that allows messages to be send to any connected client listening on a UDP connection.

eventsOn = false

UDP events serverOn = false; tcpPortNum = 11000; udpPortNum = 11001; udpAddress = "127.0.0.1";

System Folders

These folders contain the archive. For example your original images will be kept in master folder pointed to by masterPath, your derivative images will be kept in the derivatives folder and is pointed to by the derivativePath. Because some of these folders can contain large numbers of images you may need to be selective of where these folders are on your computer. The Configuration file gives you the option to define where these folders will be on your computer. The other hand some of these folders will contain small numbers of files so probably do not need to be changed from the defaults.

hookPath;

this folder will contain any scripts you need to configure the archive. Example scripts can be found in this folder after installation.

toolsPath;

this folder can optionally contain tools that can enhance your archive example exif tools such as xxx can be used to enhance reading of the exif data in images. Another example of tools that can be used to enhance the archive would be tools such as image magic which enables ridges to be resized within the archive.

workspacePath;

the Workspace is where working copies the images are stored. This WorkspacePath points the folder that contains your working images. If this folder is not present in the configuration file then the default will be in your home directory under "SIA Workspace" for example, if your username is "Joe" then this folder be kept under this path c:/Users/Joe/SIA Workspace".

derivativePath;

masterPath;

sourcePath;

configPath;

tempPath;

logPath;

homePath;

System Path

This is the folder where the main system files are placed such as the primary index files. SystemPath

indexPath; historyPath; ExternalExifTool; ExternalCommandLine; ExifMapPath; MetadataTemplatePath; backupDestinationPath; masterViewPath; DatabasePath;

Master Archive

backup1; backup2; backup1Enabled = false; backup2Enabled = false;

Derivative Archive

backup1; backup2; backup1Enabled = false; backup2Enabled = false;

Archive Backup

backupMediaSize; fromDate; toDate; isFromDate = false; isToDate = false;

Exif Tool

Archive-Folder= Source-Folder= Logging-level=

 

C:\Users\Iain Ferguson>iaadmin help show

iaadmin Tool provides administration house keeping support for ImgArchive.

NAME:
show

SYNTAX:
isadmin show [--setting=<Option>]
SettingOption = <[general] | [logging] | [network]
| [folders] | [master] | | [derivative] | [backup] | [exiftool]

Description:
Show how the system is configured.

OPTIONS:

--setting (-s) :
Show setting
Syntax:
--setting=<[general] | [logging] | [network]
| [folders] | [master] | | [derivative] | [backup] | [exiftool]

--allowed :
Shows which file type are allowed into the archive.
Syntax:
--allowed=<[ raw | picture | all ]>

--env :
Shows the archives environment variable.
Syntax:
--env=<[ folders | enabled | all ]>

--out :
Output type: text, xml, json or html.
Syntax:
out=<[plain] | [xml] | [json] | [html]>

--file :
output file name.
Syntax:
file=<filename>

Fatal:0000 - Failed to run application: ImgArchive Admin

This file is used for configuring the ImgArchive global options. These options can be overridden on the command line or environment variables so can be set as defaults. These options are especially useful for things such as the path to the current repository which needs to be known frequently but changes infrequently. To make the use of the options easier to deal with the options are split into sections. These sections have the following titles describing there content, listed below:

