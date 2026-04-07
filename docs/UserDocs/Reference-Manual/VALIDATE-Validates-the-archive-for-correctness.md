# VALIDATE – Validates the archive for correctness

# Name


isadmin validate <options>

## Synopsis


isadmin validate [–scope=[[master] | [derivative] | [workspace] | [all] | [main]

–validate-backups=[1] | [2] | [both] —validate-main=<yes | no> –repair=<true | false>

## Description


This command preforms checking the master and derivative archives and their backups making sure that the archives and the backups are complete and contain valid undamaged image files. Additionally the user spaces can also be checked. As the user spaces may possibly contain images from both the master and derivative repositories the version on the image must be checked and in the case of the workspace where image is checked out.

How the Archives are checked.

Each archive has a checksum system where each image is checked. checksumed. The checking process is done using the

## Options


–scope :
Scope of validation. This defines which repositories or repository groups will be validated. This will be any or all of the main archives.
Syntax:
–scope=<Value>

value=[master] | [derivative] | [workspace] | [pictures] | [www] | [all] | [vault] | [user]

vault - both master and derivative repositories.

user - All user repositories, workspace, pictures and www.

all - both vault and user.

If this argument is missing then no repositories will be validated.

–validate-backup :
validate backups. This can be backup 1 or 2, both and none. Both backups will be validate by default if this option is not present. This option will only validate backups that are enabled. Any backups that are not enabled will be ignored.

## Syntax


–validate-backup=<Value>
value=[1] | [2] | [both]

–no-main :
validate main archive. This option allows just the backups of a main archive to be validated. So for example: you want to validate the master backups but not the main archive then the backups can be selected using the validate-backup option and set this option to No. Note: The main archive (master/Derivate will be validate by default.

Example:

—scope=Master —validate-backup=both —validate-main

This set of arguments will validate the Master repository and the two backups. If the —validate-main is missing then the Master repository will not be validated but the two backups will be validated.

Syntax:
–validate-main=<yes|no>

–repair :
repairs the archive if damaged. Will not be repaired by default
Syntax:
–repair=<yes|no>

C:\Users\Iain Ferguson>iaadmin help validate

iaadmin Tool provides administration house keeping support for ImgArchive.

NAME:
validate

SYNTAX:
validate [-q | --quiet]
| [--scope=<archive>] | [--validate-backup=<option>]
| [--validate-main=<yes|no>]
| [--repair=<yes|no>

Description:
Validate commands

OPTIONS:

--scope :
Scope of validation. This defines which archives will be validated
Syntax:
--scope=<Value>
value=[master] | [derivative] | [workspace] | [all] | [main]

--validate-backup :
validate backup. Note: both backups will be validate by default if
avalible.
Syntax:
--validate-backup=<Value>
value=[1] | [2] | [both]

--validate-main :
validate main archive. Note: The main archive (master/will be validate by
default.
Syntax:
--validate-main=<yes|no>

--repair :
repairs the archive if damaged. Will not be repaired by default
Syntax:
--repair=<yes|no>

Fatal:0000 - Failed to run application: ImgArchive Admin