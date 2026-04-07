# PURGE – Purges deleted images from archive

# Name


isadmin purge <options>

## Synopsis


isadmin purge –scope=[all | address] 

## Description


This command preforms the validation of the archive before purging. This includes the master, derivative archives and their backups making sure that the archives and the backups are complete and contain valid undamaged image files. Additionally the workspace can also be checked.

The archive is then scanned for images that are marked deleted. if a marked deleted image is encountered it is removed from the archive permanently by deleting all copies from the master and derivative archives and their backups. This will include metadata. 

When an image is purged the sequance number and it’s fingerprint is saved. This then stops the re-import of an image already purged. 

## Options


–scope :
Scope of validation. This defines which archives will be validated. This will be any or all of the main archives.
Syntax:
–scope=<Value>

value=[master] | [derivative] | [workspace] | [all] | [main]

–validate-backup :
validate backups. This can be backup 1 or 2, both and none. Both backups will be validate by default if this option is not present. This option will only validate backups that are enabled. Any backups that are not enabled will be ignored.

## Syntax


–validate-backup=<Value>
value=[1] | [2] | [both]

–validate-main :
validate main archive. This option allows just the backups of a main archive to be validated. So for example: you want to validate the master backups but not the main archive then the backups can be selected using the validate-backup option and set this option to No. Note: The main archive (master/Derivate will be validate by default.

Syntax:
–validate-main=<yes|no>

–repair :
repairs the archive if damaged. Will not be repaired by default
Syntax:
–repair=<yes|no>

 

C:\Users\Iain Ferguson>iaadmin help purge

iaadmin Tool provides administration house keeping support for ImgArchive.

NAME:
purge

SYNTAX:
purge

Description:
Purges deleted images from archive

Note: No options for this command

Fatal:0000 - Failed to run application: ImgArchive Admin